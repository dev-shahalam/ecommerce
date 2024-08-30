<?php

namespace App\Http\Controllers;

use App\Helper\ResponseHelper;
use App\Helper\SSLCommerz;
use App\Models\CustomerProfile;
use App\Models\Invoice;
use App\Models\InvoiceProduct;
use App\Models\ProductCart;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InvoiceController extends Controller
{

    function CreateInvoice(Request $request){
        DB::beginTransaction();
        try {
            $user_id = $request->header('id');
            $user_email = $request->header('email');

            $tran_id=uniqid();
            $delivery_status='Pending';
            $payment_status='Pending';

            $profile=CustomerProfile::where('user_id',$user_id)->first();
            $cus_details="Name: $profile->cus_name. Address: $profile->cus_add. City: $profile->cus_city. Postcode: $profile->cus_postcode. Country: $profile->cus_country.Email: $user_email. Mobile: $profile->cus_phone";
            $ship_details="NameL: $profile->ship_name. Address: $profile->ship_add. City: $profile->ship_city. Postcode: $profile->ship_postcode. Country: $profile->ship_country. Email: $user_email. Mobile: $profile->ship_phone";

            // Payment
            $total=0;
            $cartList=ProductCart::where('user_id',$user_id)->get();
            foreach ($cartList as $cart){
                $total+=$cart->price;
            }

            $vat=$total*5/100;
            $payable=$total+=$vat;

            $invoice=Invoice::create([
                'total'=>$total,
                'vat'=>$vat,
                'payable'=>$payable,
                'cus_details'=>$cus_details,
                'ship_details'=>$ship_details,
                'tran_id'=>$tran_id,
                'delivery_status'=>$delivery_status,
                'payment_status'=>$payment_status,
                'user_id'=>$user_id
            ]);
            $invoice_id=$invoice->id;
            foreach ($cartList as $cart){
                InvoiceProduct::create([
                    'invoice_id'=>$invoice_id,
                    'product_id'=>$cart->product_id,
                    'user_id'=>$user_id,
                    'qty'=>$cart->qty,
                    'sale_price'=>$cart->price
                ]);
            }
            $paymentMethod=SSLCommerz::InitiatePayment($profile,$payable,$tran_id,$user_email);

            DB::commit();
            return ResponseHelper::out('success',array('paymentMethod'=>$paymentMethod,'payable'=>$payable, 'vat'=>$vat,'total'=>$total),200);
        }
        catch (Exception $e) {
            DB::rollBack();
            return ResponseHelper::out('error',$e->getMessage(),500);
        }
    }

    // Invoice List

    function InvoiceList(Request $request){
        $user_id = $request->header('id');
        $invoiceList=Invoice::where('user_id',$user_id)->get();
        return ResponseHelper::out('success',$invoiceList,200);
    }

    function InvoiceDetails(Request $request){
        $user_id = $request->header('id');
        $invoice_id=$request->id;
        $invoiceProduct=InvoiceProduct::where('user_id',$user_id)->where('invoice_id',$invoice_id)->with('product')->get();
        return ResponseHelper::out('success',$invoiceProduct,200);
    }



    // Payment
    function PaymentSuccess(Request $request){
        return SSLCommerz::InitiateSuccess($request->query('tran_id'));
    }
    function PaymentCancel(Request $request){
        return SSLCommerz::InitiateCancel($request->query('tran_id'));
    }
    function PaymentFail(Request $request){
        return SSLCommerz::InitiateFail($request->query('tran_id'));
    }
    function PaymentIPN(Request $request){
        return SSLCommerz::InitiateIPN($request->input('tran_id'),$request->input('status'),$request->input('val_id'));
    }



}

<?php

namespace App\Http\Controllers;

use App\Helper\JWTToken;
use App\Helper\ResponseHelper;
use App\Mail\OTPMail;
use App\Models\CustomerProfile;
use App\Models\User;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class UserController extends Controller
{
    public function registration(Request $request){
        try {
        $userEmail=$request->email;
        $otp=rand(100000,999999);
        $details=['code'=>$otp];
        Mail::to($userEmail)->send(new OTPMail($details));
        User::updateOrCreate(['email'=>$userEmail],['email'=>$userEmail,'otp'=>$otp]);
        return ResponseHelper::out('success','6 digit otp send successfully',200);
        }
        catch (Exception $e) {
            return ResponseHelper::out('error',$e->getMessage(),500);
        }
    }
    public function verifyOtp(Request $request){

        $userEmail=$request->email;
        $userOtp=$request->otp;
        $user=User::where('email',$userEmail)->where('otp',$userOtp)->first();
        if($user){
            User::where('email',$userEmail)->update(['otp'=>0]);
            $token=JWTToken::CreateToken($userEmail,$user->id);
            return ResponseHelper::out('success','otp verified successfully',200)
                ->cookie('token',$token,60*24*30);
        }else{
            return ResponseHelper::out('error','otp not verified',500);
        }
    }
    public function logout(){
        return cookie('token',null,-1);
    }





}

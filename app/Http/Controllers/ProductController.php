<?php

namespace App\Http\Controllers;

use App\Helper\ResponseHelper;
use App\Models\CustomerProfile;
use App\Models\Product;
use App\Models\ProductCart;
use App\Models\ProductDetail;
use App\Models\ProductReview;
use App\Models\ProductSlider;
use App\Models\ProductWish;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    // Brand
    public function ListProductByBrand(Request $request): JsonResponse
    {
        $data = Product::where('brand_id', '=', $request->id)->with('brand', 'category')->get();
        return ResponseHelper::out('success', $data, 200);
    }

    // Remark
    public function ListProductByRemark(Request $request): JsonResponse
    {
        $data = Product::where('remark', '=', $request->remark)->with('brand', 'category')->get();
        return ResponseHelper::out('success', $data, 200);
    }

    // Category
    public function ListProductByCategory(Request $request): JsonResponse
    {
        $data = Product::where('category_id', $request->id)->with('brand', 'category')->get();
        return ResponseHelper::out('success', $data, 200);
    }

    // Slider
    public function ListProductSlider(): JsonResponse
    {
        $data = ProductSlider::all();
        return ResponseHelper::out('success', $data, 200);
    }

    // Product Details By Id
    public function ProductDetailsById(Request $request): JsonResponse
    {
        $data = ProductDetail::where('product_id', $request->id)
            ->with('product', 'product.brand', 'product.category')->get();
        return ResponseHelper::out('success', $data, 200);
    }

    // Product Review By Id
    public function ListReviewByProductId(Request $request): JsonResponse
    {
        $data = ProductReview::where('product_id', $request->id)->with([
            'profile' => function ($query) {
                $query->select('id', 'cus_name');
            }])->get();
        return ResponseHelper::out('success', $data, 200);
    }

    // Create Review
    public function CreateReviewByProductId(Request $request): JsonResponse
    {
        try {
            $user_id = $request->header('id');
            $product_id = $request->input('product_id');
            $profile = CustomerProfile::where('user_id', $user_id)->first();
            if ($profile) {
                $request->merge(['customer_id' => $profile->id]);
                $data = ProductReview::updateOrcreate([
                    'customer_id' => $profile->id,
                    'product_id' => $product_id,
                ], $request->input());
                return ResponseHelper::out('success', $data, 200);
            } else {
                return ResponseHelper::out('error', 'Customer Profile Not Found', 404);
            }
        } catch (Exception $e) {
            return ResponseHelper::out('error', $e->getMessage(), 500);
        }
    }

    // Product Wishlist List
    public function ListWishlist(Request $request): JsonResponse
    {
        $user_id = $request->header('id');
        $data = ProductWish::where('user_id', $user_id)->with('product')->get();
        return ResponseHelper::out('success', $data, 200);
    }

    // Product Wishlist Create
    public function CreateWishlist(Request $request): JsonResponse
    {
        $user_id = $request->header('id');
        $product_id = $request->input('product_id');
        $data = ProductWish::updateOrCreate(
            ['user_id' => $user_id, 'product_id' => $product_id],
            ['user_id' => $user_id, 'product_id' => $product_id]
        );
        return ResponseHelper::out('success', $data, 200);
    }

    // Product Wishlist Delete
    public function DeleteWishlist(Request $request): JsonResponse
    {
        $user_id = $request->header('id');
        $product_id = $request->input('product_id');
        $data = ProductWish::where('user_id', $user_id)->where('product_id', $product_id)->delete();
        return ResponseHelper::out('success', $data, 200);
    }


    // Product Cart list
    public function ListCart(Request $request): JsonResponse
    {
        $user_id = $request->header('id');
        $data = ProductCart::where('user_id', $user_id)->with('product')->get();
        return ResponseHelper::out('success', $data, 200);
    }


    // Product cart create
    public function CreateCart(Request $request): JsonResponse
    {
        $user_id = $request->header('id');
        $product_id = $request->input('product_id');
        $color = $request->input('color');
        $size = $request->input('size');
        $qty = $request->input()['qty'];

        $price = 0;
        $product = Product::where('id', $product_id)->first();
        if ($product->discount == 1) {
            $price = $product->discount_price;
        } else {
            $price = $product->price;
        }
        $totalPrice = $price * $qty;


        $data = ProductCart::updateOrCreate(
            ['user_id' => $user_id, 'product_id' => $product_id,],
            [   'user_id' => $user_id,
                'product_id' => $product_id,
                'color' => $color,
                'size' => $size,
                'qty' => $qty,
                'price' => $totalPrice
            ]
        );
        return ResponseHelper::out('success', $data, 200);
    }
    // Product cart delete
    public function DeleteCart(Request $request): JsonResponse
    {
        $user_id = $request->header('id');
        $product_id = $request->input('product_id');
        $data = ProductCart::where('user_id', $user_id)->where('product_id', $product_id)->delete();
        return ResponseHelper::out('success', $data, 200);
    }


}

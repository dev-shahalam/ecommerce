<?php

use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\PolicyController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Http\Middleware\AuthenticUser;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
// Brand
Route::get('BrandList', [BrandController::class, 'BrandList']);

// Category
Route::get('CategoryList', [CategoryController::class, 'CategoryList']);

// Product
Route::get('ListProductByBrand/{id}', [ProductController::class, 'ListProductByBrand']);
Route::get('ListProductByCategory/{id}', [ProductController::class, 'ListProductByCategory']);
Route::get('ListProductByRemark/{remark}', [ProductController::class, 'ListProductByRemark']);
Route::get('ProductDetailsById/{id}', [ProductController::class, 'ProductDetailsById']);

// Slider
Route::get('ListProductSlider', [ProductController::class, 'ListProductSlider']);

// Policy
Route::get('PolicyListByType/{type}', [PolicyController::class, 'PolicyListByType']);


//User Authentication
Route::post('registration', [UserController::class, 'registration']);
Route::post('verifyOtp', [UserController::class, 'verifyOtp']);
Route::post('logout', [UserController::class, 'logout']);
Route::post('createProfile', [UserController::class, 'createProfile'])
    ->middleware(AuthenticUser::class);
Route::post('deleteProfile', [UserController::class, 'deleteProfile'])
    ->middleware(AuthenticUser::class);


// Product Review
Route::get('ListReviewByProductId/{id}', [ProductController::class, 'ListReviewByProductId']);
Route::post('createReviewByProductId', [ProductController::class, 'CreateReviewByProductId'])
    ->middleware(AuthenticUser::class);


// Wishlist
Route::post('createWishlist', [ProductController::class, 'CreateWishlist'])
    ->middleware(AuthenticUser::class);
Route::post('DeleteWishlist', [ProductController::class, 'DeleteWishlist'])
    ->middleware(AuthenticUser::class);
Route::get('ListWishlist', [ProductController::class, 'ListWishlist'])
    ->middleware(AuthenticUser::class);


// Cart
Route::post('CreateCart', [ProductController::class, 'CreateCart'])
    ->middleware(AuthenticUser::class);
Route::get('ListCart', [ProductController::class, 'ListCart'])
    ->middleware(AuthenticUser::class);
Route::post('DeleteCart', [ProductController::class, 'DeleteCart'])
    ->middleware(AuthenticUser::class);


// Invoice
Route::post('CreateInvoice', [InvoiceController::class, 'CreateInvoice'])
    ->middleware(AuthenticUser::class);
Route::get('InvoiceList', [InvoiceController::class, 'InvoiceList'])
    ->middleware(AuthenticUser::class);
Route::get('InvoiceDetails/{id}', [InvoiceController::class, 'InvoiceDetails'])
    ->middleware(AuthenticUser::class);


// Payment Route
Route::post('PaymentSuccess', [InvoiceController::class, 'PaymentSuccess']);
Route::post('PaymentCancel', [InvoiceController::class, 'PaymentCancel']);
Route::post('PaymentFail', [InvoiceController::class, 'PaymentFail']);
//Route::post('PaymentIPN',[InvoiceController::class,'PaymentIPN']); // This Route executed from API Routing for csrf security purpose



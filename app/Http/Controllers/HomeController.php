<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function homePage(){
        return view('pages.home-page');
    }

    public function byBrand(){
        return view('pages.product-by-brand');
    }





}

<?php

namespace App\Http\Controllers;

use App\Helper\ResponseHelper;
use App\Models\Category;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function CategoryList(): JsonResponse{
        $data=Category::all();
        return ResponseHelper::out('success',$data,200);
    }

    public function byCategory(){
        return view('pag    `es.product-by-category');
    }

}

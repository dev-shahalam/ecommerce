<?php

namespace App\Http\Controllers;

use App\Helper\ResponseHelper;
use App\Models\CustomerProfile;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function createProfile(Request $request):JsonResponse{
        $userId=$request->header('id');
        $request->merge(['user_id'=>$userId]);
        CustomerProfile::updateOrCreate(['user_id'=>$userId],$request->input());
        return ResponseHelper::out('success','Profile created successfully',200);
    }

    function ReadProfile (Request $request):JsonResponse{
        $userId=$request->header('id');
        $profile=CustomerProfile::where('user_id',$userId)->first();
        return ResponseHelper::out('success',$profile,200);
    }

    public function deleteProfile(Request $request):JsonResponse{
        try {
            $userId = $request->header('id');
            CustomerProfile::where('user_id', $userId)->delete();
            return ResponseHelper::out('success', 'Profile deleted successfully', 200);
        }
        catch (Exception $e) {
            return ResponseHelper::out('error', $e->getMessage(), 500);
        }

    }
}

<?php

namespace App\Helper;

use Exception;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

class JWTToken{

    public static function CreateToken($userEmail, $userId):string{
        $key = env('JWT_KEY');
        $payload = [
            'iss' => 'apple shop',
            'iat' => time(),
            'exp' => time() + 60*24*30,
            'email' => $userEmail,
            'user_id' => $userId
        ];
        return JWT::encode($payload, $key, 'HS256');
    }


    public static function verifyToken($token):string|object{

        try {
            if ($token===null){
                return "unauthorized";
            }
            else{
                $key = env('JWT_KEY');
                return JWT::decode($token, New Key($key,'HS256'));
            }
        }
        catch (Exception $e) {
            return ResponseHelper::out('error',$e->getMessage(),500);
        }
    }


}

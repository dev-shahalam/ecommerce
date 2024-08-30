<?php

namespace App\Http\Middleware;

use App\Helper\JWTToken;
use Closure;
use Illuminate\Http\Request;

class AuthenticUser
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next)
    {
        $token=$request->cookie('token');
        $result=JWTToken::verifyToken($token);
        if($result=='unauthorized'){
            return redirect('/loginPage');
        }else{
            $request->headers->set('email', $result->email);
            $request->headers->set('id', $result->user_id);
            return $next($request);
        }
    }
}

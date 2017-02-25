<?php

namespace App\Http\Middleware;

use Closure;

class HRD
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
       if (auth()->check() && $request->user()->permision == 'Admin') {
           return $next ($request);
       }
       elseif (auth()->check() && $request->user()->permision == 'HRD') {
           return $next ($request);
       }
       return redirect()->guest('/');
    }
}

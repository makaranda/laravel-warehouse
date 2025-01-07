<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next,...$roles)
    {
        $user = Auth::user();

        // Check if user has a valid role
        if (!$user || !in_array($user->user_type, $roles)) {
            return redirect('/unauthorized'); // Redirect to unauthorized page
        }
    }
}

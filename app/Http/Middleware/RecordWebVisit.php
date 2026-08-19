<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\WebVisit;

class RecordWebVisit
{
    public function handle(Request $request, Closure $next)
    {
        $response = $next($request);

        // ❌ Jangan catat admin & filament
        if (
            $request->is('admin*') ||
            $request->is('filament*') ||
            $request->is('livewire*')
        ) {
            return $response;
        }

        // ❌ Jangan catat asset
        if ($request->is('storage*') || $request->is('assets*')) {
            return $response;
        }

        WebVisit::create([
            'ip_address' => $request->ip(),
            'user_agent' => $request->userAgent(),
            'url'        => $request->fullUrl(),
            'referrer'   => $request->headers->get('referer'),
        ]);

        return $response;
    }
}

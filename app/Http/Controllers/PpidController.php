<?php

namespace App\Http\Controllers;

use App\Models\Ppid;
use Illuminate\Http\Request;

class PpidController extends Controller
{
    public function show(string $slug)
    {
        // wajib
        $data['title'] = 'PPID';
        // wajib
        $data['Ppid'] = Ppid::where('slug', $slug)->firstOrFail();

        return view('website.ppid.show', $data);
    }
}

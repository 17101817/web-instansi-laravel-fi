<?php

namespace App\Http\Controllers;

use App\Models\Skm;
use Illuminate\Http\Request;

class SkmController extends Controller
{
    public function show(string $slug)
    {
        // wajib
        $data['title'] = 'SURVEI KEPUASAN MASYARAKAT';
        // wajib
        $data['Skm'] = Skm::where('slug', $slug)->firstOrFail();

        return view('website.skm.show', $data);
    }
}

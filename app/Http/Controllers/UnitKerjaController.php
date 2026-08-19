<?php

namespace App\Http\Controllers;

use App\Models\UnitKerja;
use Illuminate\Http\Request;

class UnitKerjaController extends Controller
{
    //
    public function show(string $slug)
    {
        // wajib
        $data['title'] = 'Unit Kerja';
        // wajib
        $data['unitKerja'] = UnitKerja::where('slug', $slug)->firstOrFail();

        return view('website.unitKerja.show', $data);
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Informasi;
use Illuminate\Http\Request;

class InformasiController extends Controller
{
    //
    public function index()
    {
        return view('informasi.index', [
            'title' => 'Informasi',
            'informasi' => Informasi::latest()->get(),
        ]);
    }
}

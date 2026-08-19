<?php

namespace App\Http\Controllers;

use App\Models\PegawaiData;
use Illuminate\Http\Request;

class PegawaiController extends Controller
{
    //
    public function index()
    {
        return view('pegawai.index', [
            'title' => 'Data Pegawai',
            'pegawai' => PegawaiData::orderBy('nama', 'asc')->get(),
        ]);
    }
}

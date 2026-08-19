<?php

namespace App\Http\Controllers;

use App\Models\Tentang;
use Illuminate\Http\Request;

class TentangController extends Controller
{
    //
    public function index()
    {
        return view('tentang.index', [
            'title' => 'Profil Dinas',
            'tentang' => Tentang::first(),
        ]);
    }
}

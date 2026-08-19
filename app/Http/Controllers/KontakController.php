<?php

namespace App\Http\Controllers;

use App\Models\Kontak;
use Illuminate\Http\Request;

class KontakController extends Controller
{
    //
    public function index()
    {
        return view('kontak.index', [
            'title' => 'Kontak',
            'kontak' => Kontak::first(),
        ]);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProgramKegiatan;

class ProgramKegiatanController extends Controller
{
    //
    public function show(string $slug)
    {
        // wajib
        $data['title'] = 'Program Kegiatan';
        // wajib
        $data['ProgramKegiatan'] = ProgramKegiatan::where('slug', $slug)->firstOrFail();

        return view('website.program.show', $data);
    }
}

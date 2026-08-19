<?php

namespace App\Http\Controllers;

use App\Models\Galeri;
use Illuminate\Http\Request;

class GaleriController extends Controller
{
    //
    public function index()
    {
        $data['title'] = 'Galeri Kegiatan';
        $data['galeris'] = Galeri::latest()->paginate(6); // ✅ paginator

        return view('website.galeri.index', $data);
    }

    public function show(Galeri $galeri)
    {
        $data['title'] = $galeri->name;
        $data['galeri'] = $galeri;

        return view('website.galeri.show', $data);
    }
}

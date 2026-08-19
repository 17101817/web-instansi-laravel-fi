<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Slide;
use App\Models\Kontak;
use App\Models\Profile;
use App\Models\Kategori;
use App\Models\SettingWeb;
use App\Models\SocialMedia;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        // wajib
        $data['title'] = 'Home';
        // wajib
        $data['blogCategories'] = Kategori::orderBy('nama')->get();

        $data['blogs'] = Blog::withCount('comments')
            ->orderBy('created_at', 'desc')
            ->limit(6)
            ->get();
        return view('home.index', $data);
    }
}

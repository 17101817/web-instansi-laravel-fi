<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use App\Models\Kontak;
use App\Models\Profile;
use App\Models\Kategori;
use App\Models\SettingWeb;
use App\Models\SocialMedia;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    //
    public function show(string $slug)
    {
        // wajib
        $data['title'] = 'Profile';
        // wajib
        $data['profile'] = Profile::where('slug', $slug)->firstOrFail();

        return view('website.profile.show', $data);
    }
}

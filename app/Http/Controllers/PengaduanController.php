<?php

namespace App\Http\Controllers;

use App\Models\Pengaduan;
use Illuminate\Http\Request;
use App\Models\KategoriPengaduan;
use Gregwar\Captcha\CaptchaBuilder;
use Illuminate\Support\Facades\Session;

class PengaduanController extends Controller
{
    //
    public function create()
    {
        $builder = new CaptchaBuilder;
        $builder->build();

        Session::put('captcha_phrase', $builder->getPhrase());

        return view('website.pengaduan.index', [
            'title' => 'Pengaduan Masyarakat',
            'kategoriPengaduan' => KategoriPengaduan::orderBy('name')->get(),
            'captcha' => $builder->inline(),
        ]);
    }

    public function store(Request $request)
    {
        $request->validate(
            [
                'kategori_pengaduan_id' => 'required|exists:kategori_pengaduans,id',
                'name' => 'required|string|max:100',
                'email' => 'required|email',
                'no_hp' => 'required|string|max:20',
                'subjek' => 'required|string|max:150',
                'detail_pengaduan' => 'required|string|min:10',
                'captcha' => 'required',
            ],
            [
                // kategori
                'kategori_pengaduan_id.required' => 'Kategori pengaduan wajib dipilih.',
                'kategori_pengaduan_id.exists' => 'Kategori pengaduan tidak valid.',

                // nama
                'name.required' => 'Nama wajib diisi.',
                'name.string' => 'Nama harus berupa teks.',
                'name.max' => 'Nama maksimal 100 karakter.',

                // email
                'email.required' => 'Email wajib diisi.',
                'email.email' => 'Format email tidak valid.',

                // no hp
                'no_hp.required' => 'Nomor HP wajib diisi.',
                'no_hp.string' => 'Nomor HP harus berupa teks.',
                'no_hp.max' => 'Nomor HP maksimal 20 karakter.',

                // subjek
                'subjek.required' => 'Subjek pengaduan wajib diisi.',
                'subjek.max' => 'Subjek maksimal 150 karakter.',

                // detail
                'detail_pengaduan.required' => 'Detail pengaduan wajib diisi.',
                'detail_pengaduan.min' => 'Detail pengaduan minimal 10 karakter.',
                // captcha
                'captcha.required' => 'Captcha wajib diisi.',
            ]
        );

        if (strtolower(Session::get('captcha_phrase')) !== strtolower(trim($request->captcha))) {
            return back()
                ->withErrors(['captcha' => 'Captcha tidak sesuai.'])
                ->withInput();
        }

        Pengaduan::create([
            'kategori_pengaduan_id' => $request->kategori_pengaduan_id,
            'name' => $request->name,
            'email' => $request->email,
            'no_hp' => $request->no_hp,
            'subjek' => $request->subjek,
            'detail_pengaduan' => $request->detail_pengaduan,
        ]);

        return redirect()
            ->route('pengaduan.create')
            ->with('success', 'Pengaduan Anda berhasil dikirim. Terima kasih atas partisipasi Anda.');
    }
}

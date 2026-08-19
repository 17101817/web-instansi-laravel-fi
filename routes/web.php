<?php

use Gregwar\Captcha\CaptchaBuilder;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\SkmController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PpidController;
use App\Http\Controllers\GaleriController;
use App\Http\Controllers\KontakController;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\TentangController;
use App\Http\Controllers\InformasiController;
use App\Http\Controllers\PengaduanController;
use App\Http\Controllers\UnitKerjaController;
use App\Http\Controllers\ProgramKegiatanController;



//web routes start here

Route::get('/', [HomeController::class, 'index']);

Route::get('/kontak', [KontakController::class, 'index'])->name('kontak');
Route::get('/tentang', [TentangController::class, 'index'])->name('tentang');
Route::get('/pegawai-data', [PegawaiController::class, 'index'])->name('pegawai');
Route::get('/informasi', [InformasiController::class, 'index'])->name('informasi');
Route::get('/pengaduan', [PengaduanController::class, 'create'])->name('pengaduan.create');
Route::post('/pengaduan', [PengaduanController::class, 'store'])->name('pengaduan.store')->middleware('throttle:5,1');
Route::get('/pengaduan/captcha', function () {
    $builder = new \Gregwar\Captcha\CaptchaBuilder;
    $builder->build();

    session(['captcha_phrase' => $builder->getPhrase()]);

    return response()->json([
        'captcha' => $builder->inline(),
    ]);
})->name('pengaduan.captcha');

Route::get('/profile/{slug}', [ProfileController::class, 'show'])
    ->name('profile.show');
Route::get('/unit-kerja/{slug}', [UnitKerjaController::class, 'show'])
    ->name('unit-kerja.show');
Route::get('/program/{slug}', [ProgramKegiatanController::class, 'show'])
    ->name('program.show');
Route::get('/skm/{slug}', [SkmController::class, 'show'])
    ->name('skm.show');
Route::get('/ppid/{slug}', [PpidController::class, 'show'])
    ->name('ppid.show');

Route::get('/blog', [BlogController::class, 'index'])->name('blog.index');
Route::get('/blog/kategori/{slug}', [BlogController::class, 'kategori'])->name('blog.kategori');
Route::get('/blog/{slug}', [BlogController::class, 'show'])->name('blog.show');
Route::post('/blog/{slug}/komentar', [BlogController::class, 'storeComment'])->name('blog.comment.store');
Route::get('/blog/captcha', function () {
    $builder = new CaptchaBuilder;
    $builder->build();

    session(['captcha_phrase' => $builder->getPhrase()]);

    return response()->json([
        'captcha' => $builder->inline(),
    ]);
})->name('blog.captcha');
Route::get('/galeri', [GaleriController::class, 'index'])->name('galeri.index');
Route::get('/galeri/{galeri}', [GaleriController::class, 'show'])->name('galeri.show');
Route::get('/faq', [FaqController::class, 'index'])->name('faq.index');
//web routes end here


//Perintah
Route::get('/cache', function () {
    if (App::environment('local')) {
        Artisan::call('optimize:clear');
        return redirect()->back()->with('success', 'optimize clear successfully.');
    } else {
        abort(403, 'Unauthorized');
    }
});
Route::get('/linkstorage', function () {
    if (App::environment('local')) {
        Artisan::call('storage:link');
        return redirect()->back()->with('success', 'Storage linked successfully.');
    } else {
        abort(403, 'Unauthorized');
    }
});
Route::get('/migrate', function () {
    if (App::environment('local')) {
        Artisan::call('migrate');
        return redirect()->back()->with('success', 'migrate successfully.');
    } else {
        abort(403, 'Unauthorized');
    }
});

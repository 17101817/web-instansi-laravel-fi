<?php

namespace App\Providers;

use App\Models\Skm;
use App\Models\Ppid;
use App\Models\Slide;
use App\Models\Galeri;
use App\Models\Kontak;
use App\Models\Tautan;
use App\Models\Profile;
use App\Models\Kategori;
use App\Models\UnitKerja;
use App\Models\SettingWeb;
use App\Models\SocialMedia;
use App\Models\ProgramKegiatan;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Contracts\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
        View::composer('*', function ($view) {
            $view->with([
                'Kontak' => Kontak::first(),
                'SocialMedia' => SocialMedia::orderBy('id')->get(),
                'SettingWeb' => SettingWeb::first(),
                'CategoryBlog' => Kategori::orderBy('id', 'desc')->get(),
                'slides'       => Slide::orderBy('id', 'desc')->get(),
                'pageHeaderImage' => Slide::latest()->value('gambar'),
                'tautans' => Tautan::orderBy('id')->get(),
                'galeris' => Galeri::orderBy('id', 'desc')->get(),
                'profiles'     => Profile::orderBy('id', 'asc')->get(),
                'unitKerjas' => UnitKerja::orderBy('id', 'asc')->get(),
                'ProgramKegiatans' => ProgramKegiatan::orderBy('id', 'asc')->get(),
                'Skms' => Skm::orderBy('id', 'asc')->get(),
                'Ppids' => Ppid::orderBy('id', 'asc')->get(),
            ]);
        });
    }
}

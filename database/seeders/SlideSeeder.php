<?php

namespace Database\Seeders;

use App\Models\Slide;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class SlideSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Slide::insert([
            [
                'judul'  => 'Selamat Datang di Website Dinas Sosial',
                'gambar' => 'slides/slide-1.jpg',
            ],
            [
                'judul'  => 'Pelayanan Sosial untuk Masyarakat',
                'gambar' => 'slides/slide-2.jpg',
            ],
        ]);
    }
}

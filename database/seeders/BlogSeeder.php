<?php

namespace Database\Seeders;

use App\Models\Blog;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class BlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Blog::create([
            'kategori_id' => [1, 3],
            'name'        => 'Kegiatan Bakti Sosial Tahun 2025',
            'slug'        => 'kegiatan-bakti-sosial-2025',
            'description' => '<p>Dinas Sosial melaksanakan kegiatan bakti sosial sebagai bentuk kepedulian terhadap masyarakat.</p>',
            'cover'       => 'blogs/cover-baksos.jpg',
            'image'       => [
                'blogs/baksos-1.jpg',
                'blogs/baksos-2.jpg',
            ],
        ]);
    }
}

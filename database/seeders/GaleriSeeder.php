<?php

namespace Database\Seeders;

use App\Models\Galeri;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class GaleriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Galeri::create([
            'name' => 'Kegiatan Sosial 2025',
            'image' => [
                'galeri/kegiatan-1.jpg',
                'galeri/kegiatan-2.jpg',
                'galeri/kegiatan-3.jpg',
            ],
        ]);
    }
}

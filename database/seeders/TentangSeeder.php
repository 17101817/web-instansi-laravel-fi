<?php

namespace Database\Seeders;

use App\Models\Tentang;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class TentangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Tentang::create([
            'name'        => 'Tentang Dinas Sosial',
            'description' => '<p>Dinas Sosial merupakan perangkat daerah yang melaksanakan urusan pemerintahan di bidang sosial.</p>',
            'cover'       => 'tentang/cover.jpg',
            'legalitas'   => 'Peraturan Bupati Nomor 10 Tahun 2021 tentang Pembentukan Dinas Sosial.',
        ]);
    }
}

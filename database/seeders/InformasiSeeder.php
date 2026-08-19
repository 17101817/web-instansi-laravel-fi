<?php

namespace Database\Seeders;

use App\Models\Informasi;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class InformasiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Informasi::create([
            'data' => [
                [
                    'judul'  => 'Informasi Bantuan Sosial',
                    'gambar' => 'informasi/bansos.jpg',
                ],
                [
                    'judul'  => 'Informasi Pelayanan Masyarakat',
                    'gambar' => 'informasi/pelayanan.jpg',
                ],
            ],
        ]);
    }
}

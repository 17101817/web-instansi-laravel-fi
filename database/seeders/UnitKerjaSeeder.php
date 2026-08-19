<?php

namespace Database\Seeders;

use App\Models\UnitKerja;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class UnitKerjaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        UnitKerja::create([
            'name'      => 'Sekretariat',
            'slug'      => 'sekretariat',
            'deskripsi' => '<p>Unit kerja yang menangani administrasi dan tata usaha.</p>',
            'dokumen'   => ['dokumen/sekretariat.pdf'],
        ]);

        UnitKerja::create([
            'name'      => 'Bidang Rehabilitasi Sosial',
            'slug'      => 'rehabilitasi-sosial',
            'deskripsi' => '<p>Menangani pelayanan rehabilitasi sosial.</p>',
            'dokumen'   => ['dokumen/rehabilitasi.pdf'],
        ]);

        UnitKerja::create([
            'name'      => 'Bidang Perlindungan dan Jaminan Sosial',
            'slug'      => 'perlindungan-jaminan-sosial',
            'deskripsi' => '<p>Menangani perlindungan dan jaminan sosial.</p>',
            'dokumen'   => ['dokumen/perlindungan.pdf'],
        ]);

        UnitKerja::create([
            'name'      => 'Bidang Pemberdayaan Sosial',
            'slug'      => 'pemberdayaan-sosial',
            'deskripsi' => '<p>Menangani pemberdayaan masyarakat sosial.</p>',
            'dokumen'   => ['dokumen/pemberdayaan.pdf'],
        ]);
    }
}

<?php

namespace Database\Seeders;

use App\Models\ProgramKegiatan;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ProgramKegiatanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        ProgramKegiatan::create([
            'name'      => 'Program Bantuan Sosial',
            'slug'      => 'program-bantuan-sosial',
            'deskripsi' => '<p>Program bantuan sosial bagi masyarakat kurang mampu.</p>',
            'dokumen'   => ['dokumen/program-bansos.pdf'],
        ]);

        ProgramKegiatan::create([
            'name'      => 'Kegiatan Rehabilitasi Sosial',
            'slug'      => 'kegiatan-rehabilitasi-sosial',
            'deskripsi' => '<p>Kegiatan rehabilitasi bagi penyandang masalah kesejahteraan sosial.</p>',
            'dokumen'   => ['dokumen/rehabilitasi-sosial.pdf'],
        ]);
    }
}

<?php

namespace Database\Seeders;

use App\Models\Ppid;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PpidSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Ppid::create([
            'name'      => 'PPID Dinas Sosial',
            'slug'      => 'ppid-dinas-sosial',
            'deskripsi' => '<p>Pejabat Pengelola Informasi dan Dokumentasi (PPID) Dinas Sosial.</p>',
            'dokumen'   => [
                'dokumen/ppid/struktur-ppid.pdf',
                'dokumen/ppid/daftar-informasi.pdf',
            ],
        ]);
    }
}

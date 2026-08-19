<?php

namespace Database\Seeders;

use App\Models\Skm;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class SkmSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Skm::create([
            'name'      => 'Survei Kepuasan Masyarakat Tahun 2024',
            'slug'      => 'skm-2024',
            'deskripsi' => '<p>Hasil Survei Kepuasan Masyarakat terhadap pelayanan Dinas Sosial tahun 2024.</p>',
            'dokumen'   => [
                'dokumen/skm-2024.pdf',
            ],
        ]);
    }
}

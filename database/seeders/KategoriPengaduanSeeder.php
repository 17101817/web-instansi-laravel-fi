<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\KategoriPengaduan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class KategoriPengaduanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        KategoriPengaduan::insert([
            ['name' => 'Pelayanan'],
            ['name' => 'Bantuan Sosial'],
            ['name' => 'Data Kepesertaan'],
            ['name' => 'Lain-lain'],
        ]);
    }
}

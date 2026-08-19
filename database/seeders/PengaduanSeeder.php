<?php

namespace Database\Seeders;

use App\Models\Pengaduan;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PengaduanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Pengaduan::create([
            'kategori_pengaduan_id' => 1, // pastikan ada
            'name' => 'Budi Santoso',
            'email' => 'budi@gmail.com',
            'no_hp' => '081234567890',
            'subjek' => 'Bantuan sosial belum diterima',
            'detail_pengaduan' => 'Saya belum menerima bantuan sosial meskipun sudah terdaftar.',
        ]);
    }
}

<?php

namespace Database\Seeders;

use App\Models\Kontak;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class KontakSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Kontak::create([
            'name'        => 'Dinas Sosial Kabupaten',
            'phone'       => '0741-123456',
            'email'       => 'dinsos@kabupaten.go.id',
            'address'     => 'Jl. Contoh Alamat No. 1, Kabupaten, Provinsi',
            'maps_embed'  => '<iframe src="https://www.google.com/maps/embed?pb=..."></iframe>',
        ]);
    }
}

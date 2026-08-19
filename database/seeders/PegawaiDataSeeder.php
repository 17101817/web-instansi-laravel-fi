<?php

namespace Database\Seeders;

use App\Models\PegawaiData;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PegawaiDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        PegawaiData::insert([
            [
                'nama'      => 'Ahmad Fauzi',
                'nip'       => '197801012005011001',
                'jabatan'   => 'Kepala Dinas Sosial',
                'pangkat'   => 'Pembina Utama Muda',
                'golongan'  => 'IV/c',
            ],
            [
                'nama'      => 'Siti Aminah',
                'nip'       => '198203152010012002',
                'jabatan'   => 'Kepala Bidang Rehabilitasi Sosial',
                'pangkat'   => 'Penata Tingkat I',
                'golongan'  => 'III/d',
            ],
        ]);
    }
}

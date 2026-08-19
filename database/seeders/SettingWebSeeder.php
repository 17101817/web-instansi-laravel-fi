<?php

namespace Database\Seeders;

use App\Models\SettingWeb;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class SettingWebSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        SettingWeb::create([
            'logo_kiri'  => 'logo/logo-kiri.png',
            'logo_kanan' => 'logo/logo-kanan.png',
            'name'       => 'Dinas Sosial Kabupaten',
            'whatsapp'   => '628123456789',
            'meta_tag'   => '<meta name="description" content="Website Resmi Dinas Sosial">',
        ]);
    }
}

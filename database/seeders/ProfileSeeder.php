<?php

namespace Database\Seeders;

use App\Models\Profile;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ProfileSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Profile::create([
            'name'      => 'Profil Dinas Sosial',
            'slug'      => 'profil-dinas-sosial',
            'deskripsi' => '<p>Profil Dinas Sosial Kabupaten berisi visi, misi, dan tugas pokok fungsi.</p>',
            'dokumen'   => [
                'dokumen/visi-misi.pdf',
                'dokumen/tupoksi.pdf',
            ],
        ]);
    }
}

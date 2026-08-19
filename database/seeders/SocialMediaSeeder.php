<?php

namespace Database\Seeders;

use App\Models\SocialMedia;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class SocialMediaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        SocialMedia::insert([
            [
                'name' => 'Facebook',
                'url'  => 'https://facebook.com/dinsos',
                'icon' => 'fa-brands fa-facebook',
            ],
            [
                'name' => 'Instagram',
                'url'  => 'https://instagram.com/dinsos',
                'icon' => 'fa-brands fa-instagram',
            ],
            [
                'name' => 'YouTube',
                'url'  => 'https://youtube.com/@dinsos',
                'icon' => 'fa-brands fa-youtube',
            ],
        ]);
    }
}

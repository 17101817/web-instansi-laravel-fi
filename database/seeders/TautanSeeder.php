<?php

namespace Database\Seeders;

use App\Models\Tautan;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class TautanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Tautan::insert([
            [
                'name' => 'Kementerian Sosial RI',
                'url'  => 'https://kemensos.go.id',
            ],
            [
                'name' => 'Website Kabupaten',
                'url'  => 'https://kabupaten.go.id',
            ],
        ]);
    }
}

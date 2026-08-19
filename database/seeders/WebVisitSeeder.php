<?php

namespace Database\Seeders;

use App\Models\WebVisit;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class WebVisitSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        WebVisit::create([
            'ip_address' => '127.0.0.1',
            'user_agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)',
            'url'        => 'http://localhost/',
            'referrer'   => 'http://google.com',
        ]);
    }
}

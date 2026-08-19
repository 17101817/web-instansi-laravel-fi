<?php

namespace Database\Seeders;

use App\Models\Faq;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class FaqSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Faq::insert([
            [
                'question' => 'Apa itu Dinas Sosial?',
                'answer'   => 'Dinas Sosial adalah perangkat daerah yang menyelenggarakan urusan pemerintahan di bidang sosial.',
            ],
            [
                'question' => 'Bagaimana cara mengajukan pengaduan?',
                'answer'   => 'Pengaduan dapat diajukan melalui menu Pengaduan pada website resmi Dinas Sosial.',
            ],
        ]);
    }
}

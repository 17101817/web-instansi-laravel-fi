<?php

namespace Database\Seeders;

use App\Models\EmbedYoutube;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class EmbedYoutubeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        EmbedYoutube::create([
            'text_embed' => '<iframe width="560" height="315" src="https://www.youtube.com/embed/xxxxxxxx" frameborder="0" allowfullscreen></iframe>',
            'is_active'  => 1,
        ]);
    }
}

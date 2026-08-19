<?php

namespace Database\Seeders;

use App\Models\Comment;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CommentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Comment::insert([
            [
                'blog_id' => 1,
                'name'    => 'Budi',
                'email'   => 'budi@gmail.com',
                'comment' => 'Artikel yang sangat bermanfaat, terima kasih.',
            ],
            [
                'blog_id' => 1,
                'name'    => 'Siti',
                'email'   => 'siti@gmail.com',
                'comment' => 'Semoga kegiatan seperti ini terus dilakukan.',
            ],
        ]);
    }
}

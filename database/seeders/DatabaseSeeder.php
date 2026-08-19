<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            UserSeeder::class,
            SettingWebSeeder::class,
            KontakSeeder::class,
            FaqSeeder::class,
            TautanSeeder::class,
            SocialMediaSeeder::class,
            SlideSeeder::class,
            KategoriSeeder::class,
            BlogSeeder::class,
            CommentSeeder::class,
            InformasiSeeder::class,
            PegawaiDataSeeder::class,
            TentangSeeder::class,
            GaleriSeeder::class,
            EmbedYoutubeSeeder::class,
            WebVisitSeeder::class,
            ProfileSeeder::class,
            UnitKerjaSeeder::class,
            ProgramKegiatanSeeder::class,
            SkmSeeder::class,
            PpidSeeder::class,
            KategoriPengaduanSeeder::class,
            PengaduanSeeder::class,

        ]);
    }
}

<?php

use App\Models\Kategori;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('kategoris', function (Blueprint $table) {
            $table->string('slug')->nullable()->after('nama');
        });

        // 🔥 Generate slug otomatis untuk data lama
        Kategori::whereNull('slug')->get()->each(function ($kategori) {
            $kategori->update([
                'slug' => Str::slug($kategori->nama),
            ]);
        });

        Schema::table('kategoris', function (Blueprint $table) {
            $table->string('slug')->unique()->change();
        });
    }

    public function down(): void
    {
        Schema::table('kategoris', function (Blueprint $table) {
            $table->dropColumn('slug');
        });
    }
};

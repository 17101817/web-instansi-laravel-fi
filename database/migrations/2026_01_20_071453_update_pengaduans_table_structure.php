<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('pengaduans', function (Blueprint $table) {

            // HAPUS KOLOM LAMA JIKA ADA
            foreach (['slug', 'deskripsi', 'dokumen'] as $column) {
                if (Schema::hasColumn('pengaduans', $column)) {
                    $table->dropColumn($column);
                }
            }

            // TAMBAH FK JIKA BELUM ADA
            if (! Schema::hasColumn('pengaduans', 'kategori_pengaduan_id')) {
                $table->foreignId('kategori_pengaduan_id')
                    ->after('id')
                    ->constrained('kategori_pengaduans')
                    ->cascadeOnDelete();
            }

            // TAMBAH KOLOM BARU JIKA BELUM ADA
            if (! Schema::hasColumn('pengaduans', 'email')) {
                $table->string('email');
            }

            if (! Schema::hasColumn('pengaduans', 'no_hp')) {
                $table->string('no_hp')->nullable();
            }

            if (! Schema::hasColumn('pengaduans', 'subjek')) {
                $table->string('subjek');
            }

            if (! Schema::hasColumn('pengaduans', 'detail_pengaduan')) {
                $table->longText('detail_pengaduan');
            }

            // ❌ JANGAN TAMBAH name (SUDAH ADA)
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('pengaduans', function (Blueprint $table) {
            //
            $table->dropForeign(['kategori_pengaduan_id']);
            $table->dropColumn([
                'kategori_pengaduan_id',
                'name',
                'email',
                'no_hp',
                'subjek',
                'detail_pengaduan',
            ]);
        });
    }
};

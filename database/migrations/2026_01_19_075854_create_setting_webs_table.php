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
        Schema::create('setting_webs', function (Blueprint $table) {
            $table->id();
            $table->string('logo_kiri')->nullable();
            $table->string('logo_kanan')->nullable();
            $table->string('name');
            $table->string('whatsapp')->nullable();
            $table->text('meta_tag')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('setting_webs');
    }
};

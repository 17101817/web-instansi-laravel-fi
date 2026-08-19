<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class EmbedYoutube extends Model
{
    //
    use HasFactory;

    protected $guarded = ['id'];

    protected $casts = [
        'is_active' => 'boolean',
    ];

    protected static function booted()
    {
        static::saving(function (EmbedYoutube $text_embed) {
            // Jika brosur ini diaktifkan
            if ($text_embed->is_active) {
                // Nonaktifkan semua brosur lain
                self::where('id', '!=', $text_embed->id)
                    ->update(['is_active' => false]);
            }
        });
    }
}

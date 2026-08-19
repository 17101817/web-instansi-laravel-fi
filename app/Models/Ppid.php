<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Ppid extends Model
{
    //
    use HasFactory;

    protected $guarded = ['id'];

    protected $casts = [
        'dokumen' => 'array',
    ];
    protected static function booted()
    {
        static::saving(function ($otomatis) {
            if (empty($otomatis->slug) || $otomatis->isDirty('name')) {
                $otomatis->slug = Str::slug($otomatis->name);
            }
        });
    }
}

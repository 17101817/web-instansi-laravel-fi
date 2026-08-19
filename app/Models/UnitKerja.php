<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class UnitKerja extends Model
{
    //
    use HasFactory;

    protected $guarded = ['id'];

    protected $casts = [
        'dokumen' => 'array',
    ];
    protected static function booted()
    {
        static::saving(function ($unit) {
            if (empty($unit->slug) || $unit->isDirty('name')) {
                $unit->slug = Str::slug($unit->name);
            }
        });
    }
}

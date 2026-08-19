<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Profile extends Model
{
    //
    use HasFactory;

    protected $guarded = ['id'];

    protected $casts = [
        'dokumen' => 'array',
    ];
    protected static function booted()
    {
        static::saving(function ($profile) {
            if (empty($profile->slug) || $profile->isDirty('name')) {
                $profile->slug = Str::slug($profile->name);
            }
        });
    }
}

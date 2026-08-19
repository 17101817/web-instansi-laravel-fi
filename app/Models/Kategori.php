<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Kategori extends Model
{
    //
    use HasFactory;

    protected $guarded = ['id'];

    public function blogs()
    {
        return $this->hasMany(Blog::class);
    }
    protected static function booted()
    {
        static::creating(function ($kategori) {
            if (empty($kategori->slug)) {
                $kategori->slug = Str::slug($kategori->nama);
            }
        });
    }
}

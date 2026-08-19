<?php

namespace App\Models;

use App\Models\Kategori;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Blog extends Model
{
    //
    use HasFactory;

    protected $guarded = ['id'];

    protected $casts = [
        'kategori_id' => 'array',
        'image'       => 'array',
    ];

    public function kategori()
    {
        return $this->belongsTo(Kategori::class);
    }
    public function comments()
    {
        return $this->hasMany(Comment::class, 'blog_id');
    }
    public function getKategoriNamesAttribute(): string
    {
        $ids = $this->kategori_id;

        if (! is_array($ids) || empty($ids)) {
            return '-';
        }

        return Kategori::whereIn('id', $ids)->pluck('nama')->implode(', ');
    }
    protected static function booted()
    {
        static::saving(function ($blog) {
            if (empty($blog->slug) || $blog->isDirty('name')) {
                $blog->slug = Str::slug($blog->name);
            }
        });
    }
}

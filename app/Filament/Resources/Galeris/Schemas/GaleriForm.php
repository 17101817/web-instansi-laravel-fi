<?php

namespace App\Filament\Resources\Galeris\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class GaleriForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')
                    ->required(),
                FileUpload::make('image')
                    ->label('Gambar Galeri')
                    ->image()
                    ->multiple()                 // 🔥 BANYAK GAMBAR
                    ->disk('public')             // 🔥 WAJIB
                    ->directory('galeri')         // storage/app/public/galeri
                    ->reorderable()              // drag & drop
                    ->imagePreviewHeight(120)
                    ->required(),
            ]);
    }
}

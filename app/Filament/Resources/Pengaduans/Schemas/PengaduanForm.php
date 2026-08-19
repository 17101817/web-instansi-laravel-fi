<?php

namespace App\Filament\Resources\Pengaduans\Schemas;

use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;

class PengaduanForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('kategori_pengaduan_id')
                    ->native(false)
                    ->required()
                    ->relationship('kategoriPengaduan', 'name'),
                TextInput::make('name')
                    ->required(),
                TextInput::make('email')
                    ->label('Email address')
                    ->email()
                    ->required(),
                TextInput::make('no_hp'),
                TextInput::make('subjek')
                    ->required(),
                Textarea::make('detail_pengaduan')
                    ->required()
                    ->columnSpanFull(),
            ]);
    }
}

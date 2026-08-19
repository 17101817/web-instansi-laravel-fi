<?php

namespace App\Filament\Resources\Informasis\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;

class InformasiForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Repeater::make('data')
                    ->label('Data Informasi')
                    ->schema([
                        TextInput::make('judul')
                            ->label('Judul Informasi')
                            ->required(),

                        FileUpload::make('gambar')
                            ->label('Gambar')
                            ->image()
                            ->disk('public')          // 🔥 WAJIB
                            ->directory('informasi')  // storage/app/public/informasi
                            ->visibility('public')    // 🔥 WAJIB
                            ->columns(1)
                            ->required(),
                    ])
                    ->minItems(1)
                    ->addActionLabel('Tambah Informasi')
                    ->collapsible()
                    ->columnSpanFull()
                    ->cloneable(),
            ]);
    }
}

<?php

namespace App\Filament\Resources\UnitKerjas\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;

class UnitKerjaForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')
                    ->required(),
                RichEditor::make('deskripsi')
                    ->required()
                    ->columnSpanFull(),
                Repeater::make('dokumen')
                    ->schema([
                        TextInput::make('nama')
                            ->required(),
                        FileUpload::make('file')
                            ->directory('unit-kerja/dokumen')
                            ->disk('public')
                            ->required(),
                    ])->columns(2)
                    ->columnSpanFull(),
            ]);
    }
}

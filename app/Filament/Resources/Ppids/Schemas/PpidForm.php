<?php

namespace App\Filament\Resources\Ppids\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;

class PpidForm
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
                            ->directory('skm/dokumen')
                            ->disk('public')
                            ->required(),
                    ])->columns(2)
                    ->columnSpanFull(),
            ]);
    }
}

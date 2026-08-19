<?php

namespace App\Filament\Resources\Tentangs\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;

class TentangForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')
                    ->required(),
                RichEditor::make('description')
                    ->required()
                    ->columnSpanFull(),
                FileUpload::make('cover')
                    ->image()
                    ->disk('public')
                    ->directory('tentang')
                    ->image()
                    ->required()
                    ->columnSpanFull(),
                FileUpload::make('legalitas')
                    ->image()
                    ->disk('public')
                    ->directory('tentang')
                    ->acceptedFileTypes(['application/pdf'])
                    ->required()
                    ->columnSpanFull(),
            ]);
    }
}

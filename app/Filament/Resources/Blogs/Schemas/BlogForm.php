<?php

namespace App\Filament\Resources\Blogs\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;

class BlogForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('kategori_id')
                    ->relationship('kategori', 'nama')
                    ->multiple()
                    ->preload()
                    ->searchable()
                    ->required(),
                TextInput::make('name')
                    ->required(),
                RichEditor::make('description')
                    ->required()
                    ->columnSpanFull(),
                FileUpload::make('cover')
                    ->image()
                    ->required()
                    ->columnSpanFull()
                    ->disk('public')
                    ->directory('blogs/covers'),
                Repeater::make('image')
                    ->schema([
                        TextInput::make('nama'),
                        FileUpload::make('image')
                            ->directory('blogs/image')
                            ->disk('public'),
                    ])->columns(2)
                    ->columnSpanFull(),
            ]);
    }
}

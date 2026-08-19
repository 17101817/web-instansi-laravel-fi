<?php

namespace App\Filament\Resources\SettingWebs\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;

class SettingWebForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                FileUpload::make('logo_kiri')
                    ->image()
                    ->disk('public')
                    ->directory('settings')
                    ->maxSize(2048),
                FileUpload::make('logo_kanan')
                    ->image()
                    ->disk('public')
                    ->directory('settings')
                    ->maxSize(2048),
                TextInput::make('name')
                    ->required(),
                TextInput::make('whatsapp'),
                Textarea::make('meta_tag')
                    ->columnSpanFull(),
            ]);
    }
}

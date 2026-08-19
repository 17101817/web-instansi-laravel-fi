<?php

namespace App\Filament\Resources\SocialMedia\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class SocialMediaForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')
                    ->required(),
                TextInput::make('url')
                    ->url()
                    ->required(),
                TextInput::make('icon'),
            ]);
    }
}

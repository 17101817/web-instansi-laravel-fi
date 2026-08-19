<?php

namespace App\Filament\Resources\PegawaiData\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class PegawaiDataForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nama')
                    ->required(),
                TextInput::make('nip'),
                TextInput::make('jabatan'),
                TextInput::make('pangkat'),
                TextInput::make('golongan'),
            ]);
    }
}

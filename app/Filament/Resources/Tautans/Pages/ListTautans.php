<?php

namespace App\Filament\Resources\Tautans\Pages;

use App\Filament\Resources\Tautans\TautanResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListTautans extends ListRecords
{
    protected static string $resource = TautanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}

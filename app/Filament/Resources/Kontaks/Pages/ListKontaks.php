<?php

namespace App\Filament\Resources\Kontaks\Pages;

use App\Filament\Resources\Kontaks\KontakResource;
use App\Models\Kontak;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListKontaks extends ListRecords
{
    protected static string $resource = KontakResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make()
                ->hidden(fn(): bool => Kontak::query()->exists()),
        ];
    }
}

<?php

namespace App\Filament\Resources\Ppids;

use App\Filament\Resources\Ppids\Pages\CreatePpid;
use App\Filament\Resources\Ppids\Pages\EditPpid;
use App\Filament\Resources\Ppids\Pages\ListPpids;
use App\Filament\Resources\Ppids\Schemas\PpidForm;
use App\Filament\Resources\Ppids\Tables\PpidsTable;
use App\Models\Ppid;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use UnitEnum;

class PpidResource extends Resource
{
    protected static ?string $model = Ppid::class;
    protected static string | UnitEnum | null $navigationGroup = 'Manajemen Data';

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    public static function form(Schema $schema): Schema
    {
        return PpidForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return PpidsTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListPpids::route('/'),
        ];
    }
}

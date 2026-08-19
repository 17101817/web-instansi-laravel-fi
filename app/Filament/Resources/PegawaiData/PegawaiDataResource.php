<?php

namespace App\Filament\Resources\PegawaiData;

use App\Filament\Resources\PegawaiData\Pages\CreatePegawaiData;
use App\Filament\Resources\PegawaiData\Pages\EditPegawaiData;
use App\Filament\Resources\PegawaiData\Pages\ListPegawaiData;
use App\Filament\Resources\PegawaiData\Schemas\PegawaiDataForm;
use App\Filament\Resources\PegawaiData\Tables\PegawaiDataTable;
use App\Models\PegawaiData;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use UnitEnum;

class PegawaiDataResource extends Resource
{
    protected static ?string $model = PegawaiData::class;
    protected static string | UnitEnum | null $navigationGroup = 'Manajemen Data';

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    public static function form(Schema $schema): Schema
    {
        return PegawaiDataForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return PegawaiDataTable::configure($table);
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
            'index' => ListPegawaiData::route('/'),
            // 'create' => CreatePegawaiData::route('/create'),
            // 'edit' => EditPegawaiData::route('/{record}/edit'),
        ];
    }
}

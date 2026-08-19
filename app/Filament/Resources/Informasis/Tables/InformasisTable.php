<?php

namespace App\Filament\Resources\Informasis\Tables;

use App\Models\Informasi;
use Dom\Text;
use Filament\Tables\Table;
use Filament\Actions\EditAction;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;

class InformasisTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->query(
                Informasi::orderBy('created_at', 'desc')
            )
            ->columns([
                TextColumn::make('#')
                    ->rowIndex()
                    ->searchable(),
                TextColumn::make('Judul')
                    ->label('Judul Informasi')
                    ->getStateUsing(function ($record) {
                        if (! is_array($record->data)) {
                            return '-';
                        }

                        return collect($record->data)
                            ->pluck('judul')
                            ->implode(', ');
                    })
                    ->wrap(),
                TextColumn::make('data')
                    ->label('Jumlah Foto')
                    ->getStateUsing(fn($record) => count($record->data ?? []))
                    ->badge(),
                // ✅ JUDUL
            ])
            ->filters([
                //
            ])
            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}

<?php

namespace App\Filament\Resources\Pengaduans\Tables;

use App\Models\Pengaduan;
use Filament\Tables\Table;
use Illuminate\Support\Str;
use Filament\Actions\Action;
use Filament\Actions\EditAction;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Tables\Columns\TextColumn;

class PengaduansTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->query(
                Pengaduan::orderBy('created_at', 'desc')
            )
            ->columns([
                TextColumn::make('#')
                    ->rowIndex()
                    ->searchable(),
                TextColumn::make('kategoriPengaduan.name')
                    ->label('Kategori')
                    ->searchable(),
                TextColumn::make('name')
                    ->searchable(),
                TextColumn::make('email')
                    ->label('Email address')
                    ->searchable(),
                TextColumn::make('no_hp')
                    ->searchable(),
                TextColumn::make('subjek')
                    ->searchable(),
                TextColumn::make('created_at')
                    ->label('Waktu Pengaduan')
                    ->dateTime(),
            ])
            ->filters([
                //
            ])
            ->recordActions([

                Action::make('contacted')
                    ->label('Contacted')
                    ->icon('heroicon-o-phone')
                    ->color('warning')
                    ->requiresConfirmation()
                    ->action(function ($record) {

                        // 2️⃣ Normalisasi nomor (hapus spasi, strip, dll)
                        $no_hp = preg_replace('/[^0-9]/', '', $record->no_hp);

                        // 3️⃣ Pastikan format WA (62)
                        if (Str::startsWith($no_hp, '0')) {
                            $no_hp = '62' . substr($no_hp, 1);
                        }

                        // 4️⃣ Redirect ke WhatsApp
                        return redirect()->away("https://wa.me/{$no_hp}");
                    }),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}

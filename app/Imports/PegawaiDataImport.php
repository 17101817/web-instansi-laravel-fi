<?php

namespace App\Imports;

use App\Models\PegawaiData;
use Illuminate\Validation\ValidationException;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;

class PegawaiDataImport implements ToModel, WithHeadingRow, WithValidation
{
    public function model(array $row)
    {
        // 🔍 CEK DUPLIKAT NIP
        $exists = PegawaiData::where('nip', $row['nip'])->first();

        if ($exists) {
            throw ValidationException::withMessages([
                'nip' => "NIP {$row['nip']} (Nama: {$row['nama']}) Sama dengan NIP lain .",
            ]);
        }

        return new PegawaiData([
            'nama'     => $row['nama'],
            'nip'      => $row['nip'],
            'jabatan'  => $row['jabatan'],
            'pangkat'  => $row['pangkat'] ?? null,
            'golongan' => $row['golongan'] ?? null,
        ]);
    }

    public function rules(): array
    {
        return [
            'nama'     => 'required',
            'nip'      => 'required|string',
            'jabatan'  => 'required',
            'pangkat'  => 'nullable',
            'golongan' => 'nullable',
        ];
    }

    public function customValidationMessages()
    {
        return [
            'nama.required'    => 'Nama wajib diisi.',
            'nip.required'     => 'NIP wajib diisi.',
            'jabatan.required' => 'Jabatan wajib diisi.',
        ];
    }
}

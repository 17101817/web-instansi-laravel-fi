<?php

namespace App\Filament\Widgets;

use App\Models\WebVisit;
use Filament\Widgets\ChartWidget;

class WebVisitMontChart extends ChartWidget
{
    protected static ?int $sort = 3;

    public function getHeading(): string
    {
        return 'Kunjungan Per Bulan';
    }

    protected function getData(): array
    {
        // Ambil data 12 bulan terakhir
        $visits = WebVisit::selectRaw('YEAR(created_at) as year, MONTH(created_at) as month, COUNT(*) as total')
            ->where('created_at', '>=', now()->subMonths(11)->startOfMonth())
            ->groupBy('year', 'month')
            ->orderBy('year')
            ->orderBy('month')
            ->get();

        $labels = [];
        $data = [];

        // Loop 12 bulan terakhir supaya tidak bolong
        for ($i = 11; $i >= 0; $i--) {
            $date = now()->subMonths($i);
            $month = $date->month;
            $year = $date->year;

            $labels[] = $date->translatedFormat('F Y');

            $found = $visits->firstWhere(
                fn($item) =>
                $item->month == $month && $item->year == $year
            );

            $data[] = $found->total ?? 0;
        }

        return [
            'datasets' => [
                [
                    'label' => 'Jumlah Kunjungan',
                    'data' => $data,
                ],
            ],
            'labels' => $labels,
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }
}

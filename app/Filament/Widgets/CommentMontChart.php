<?php

namespace App\Filament\Widgets;

use App\Models\Comment;
use Filament\Widgets\ChartWidget;

class CommentMontChart extends ChartWidget
{
    protected static ?int $sort = 4;

    public function getHeading(): string
    {
        return 'Komentar Per Bulan';
    }

    protected function getData(): array
    {
        $data = Comment::selectRaw('YEAR(created_at) as year, MONTH(created_at) as month, COUNT(*) as total')
            ->where('created_at', '>=', now()->subMonths(11)->startOfMonth())
            ->groupBy('year', 'month')
            ->orderBy('year')
            ->orderBy('month')
            ->get();

        $labels = [];
        $totals = [];

        for ($i = 11; $i >= 0; $i--) {
            $date = now()->subMonths($i);
            $labels[] = $date->translatedFormat('F Y');

            $found = $data->firstWhere(
                fn($item) =>
                $item->year == $date->year && $item->month == $date->month
            );

            $totals[] = $found->total ?? 0;
        }

        return [
            'datasets' => [
                [
                    'label' => 'Jumlah Komentar',
                    'data' => $totals,
                ],
            ],
            'labels' => $labels,
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }
}

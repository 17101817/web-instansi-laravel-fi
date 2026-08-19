@extends('layouts.app')

@section('content')
    <!-- Page Header Start -->
    @php
        $headerImage = $pageHeaderImage ? asset('storage/' . $pageHeaderImage) : asset('template/img/carousel-1.jpg');
    @endphp

    <div class="container-fluid page-header-bg py-5 mb-5" style="--page-header-bg: url('{{ $headerImage }}');">

        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">{{ $title }}</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="{{ '/' }}">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">{{ $title }}</a></li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container py-5">

        <h1 class="mb-4">{{ $title }}</h1>

        <div class="row g-4">
            @forelse ($informasi as $item)
                @foreach ($item->data ?? [] as $info)
                    <div class="col-md-4">
                        <div class="card h-100">
                            @if (!empty($info['gambar']))
                                <img src="{{ asset('storage/' . $info['gambar']) }}" class="card-img-top"
                                    style="height:200px;object-fit:cover">
                            @endif
                            <div class="card-body">
                                <h5>{{ $info['judul'] }}</h5>
                            </div>
                        </div>
                    </div>
                @endforeach
            @empty
                <p>Tidak ada informasi.</p>
            @endforelse
        </div>

    </div>
@endsection

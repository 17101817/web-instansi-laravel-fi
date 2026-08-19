@extends('layouts.app')

@section('content')
    <!-- Page Header Start -->
    @php
        $headerImage = $pageHeaderImage ? asset('storage/' . $pageHeaderImage) : asset('template/img/carousel-1.jpg');
    @endphp

    <div class="container-fluid page-header-bg py-5 mb-5" style="--page-header-bg: url('{{ $headerImage }}');">

        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">{{ $ProgramKegiatan->name }}</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="{{ '/' }}">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">{{ $title }}</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">{{ $ProgramKegiatan->name }}</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container py-5">

        <h1 class="mb-4">{{ $ProgramKegiatan->name }}</h1>

        <div class="mb-4">
            {!! $ProgramKegiatan->deskripsi !!}
        </div>

        @if (is_array($ProgramKegiatan->dokumen) && count($ProgramKegiatan->dokumen))
            <h5 class="mb-3">Lampiran</h5>

            <div class="row g-4">
                @foreach ($ProgramKegiatan->dokumen as $item)
                    @php
                        // 🔒 Normalisasi file
                        $nama = $item['nama'] ?? null;
                        $file = is_array($item) ? $item['file'] ?? null : $item;
                        $label = is_array($item) ? $item['label'] ?? basename($file) : basename($file);

                        if (!$file) {
                            continue;
                        }

                        $extension = strtolower(pathinfo($file, PATHINFO_EXTENSION));
                        $imageExtensions = ['jpg', 'jpeg', 'png', 'webp'];
                    @endphp

                    {{-- 🖼️ GAMBAR --}}
                    @if (in_array($extension, $imageExtensions))
                        <div class="col-md-4">
                            <div class="card h-100 shadow-sm">
                                <img src="{{ asset('storage/' . $file) }}" class="card-img-top img-fluid"
                                    style="object-fit: cover; " alt="{{ $label }}">

                                <div class="card-body text-center">
                                    <div class="fw-semibold mb-2">{{ $nama }}</div>

                                    <a href="{{ asset('storage/' . $file) }}" target="_blank"
                                        class="btn btn-outline-primary btn-sm">
                                        Lihat Gambar
                                    </a>
                                </div>
                            </div>
                        </div>

                        {{-- 📄 FILE LAIN (PDF, DOC, dll) --}}
                    @else
                        <div class="col-12">
                            <div class="d-flex align-items-center border rounded p-3 shadow-sm">
                                <i class="bi bi-file-earmark-text fs-2 me-3 text-primary"></i>

                                <div class="flex-grow-1">
                                    <div class="fw-semibold">{{ $nama }}</div>
                                    <small class="text-muted">{{ strtoupper($extension) }}</small>
                                </div>

                                <a href="{{ asset('storage/' . $file) }}" class="btn btn-primary btn-sm" download>
                                    Download
                                </a>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
        @endif

    </div>
@endsection

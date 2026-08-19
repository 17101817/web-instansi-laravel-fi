@extends('layouts.app')

@section('content')
    {{-- ===== PAGE HEADER ===== --}}
    @php
        $headerImage = $pageHeaderImage ? asset('storage/' . $pageHeaderImage) : asset('template/img/carousel-1.jpg');
    @endphp

    <div class="container-fluid page-header-bg py-5 mb-5" style="--page-header-bg: url('{{ $headerImage }}');">
        <div class="container py-5">
            <h1 class="display-4 text-white mb-2">
                {{ $kategori->nama ?? $title }}
            </h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a class="text-white" href="{{ url('/') }}">Home</a>
                    </li>
                    <li class="breadcrumb-item text-white active">
                        {{ $kategori->nama ?? $title }}
                    </li>
                </ol>
            </nav>
        </div>
    </div>

    {{-- ===== CONTENT ===== --}}
    <div class="container py-5">
        <div class="row">

            {{-- ===== MAIN CONTENT ===== --}}
            <div class="col-lg-8">

                @forelse ($blogs as $blog)
                    <div class="card mb-4 shadow-sm">
                        <img src="{{ asset('storage/' . $blog->cover) }}" class="card-img-top"
                            style="object-fit: cover; height: 280px;">

                        <div class="card-body">
                            <h4 class="mb-2">
                                <a href="{{ route('blog.show', $blog->slug) }}" class="text-dark text-decoration-none">
                                    {{ $blog->name }}
                                </a>
                            </h4>
                            <div class="d-flex justify-content-between text-muted small mb-2">
                                <span>
                                    <i class="fa fa-calendar-alt me-1"></i>
                                    {{ $blog->created_at->translatedFormat('d F Y') }}
                                </span>

                                <span>
                                    <i class="fa fa-comments me-1"></i>
                                    {{ $blog->comments_count }} Komentar
                                </span>
                            </div>

                            <a href="{{ route('blog.show', $blog->slug) }}" class="btn btn-primary btn-sm">
                                Baca Selengkapnya
                            </a>
                        </div>
                    </div>
                @empty
                    <p>Belum ada artikel.</p>
                @endforelse

                {{-- PAGINATION --}}
                <div class="mt-4">
                    <div class="blog-pagination justify-content-center d-flex">
                        {{ $blogs->links('pagination::bootstrap-4') }}
                    </div>
                </div>

            </div>

            {{-- ===== SIDEBAR ===== --}}
            <div class="col-lg-4">

                {{-- KATEGORI --}}
                <div class="card mb-4">
                    <div class="card-header fw-bold">
                        Kategori
                    </div>
                    <div class="list-group list-group-flush">
                        @foreach ($kategoriList as $kat)
                            <a href="{{ route('blog.kategori', $kat->slug) }}"
                                class="list-group-item list-group-item-action
                               {{ isset($kategori) && $kategori->id === $kat->id ? 'active' : '' }}">
                                {{ $kat->nama }}
                            </a>
                        @endforeach
                    </div>
                </div>

                {{-- BLOG TERBARU (OPSIONAL) --}}
                <div class="card">
                    <div class="card-header fw-bold">
                        Artikel Terbaru
                    </div>
                    <ul class="list-group list-group-flush">
                        @foreach ($blogs->take(5) as $latest)
                            <li class="list-group-item">
                                <a href="{{ route('blog.show', $latest->slug) }}" class="text-decoration-none">
                                    {{ $latest->name }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>

            </div>

        </div>
    </div>
@endsection

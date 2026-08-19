@extends('layouts.app')

@section('content')
    {{-- PAGE HEADER --}}
    @php
        $headerImage = $blog->cover ? asset('storage/' . $blog->cover) : asset('template/img/carousel-1.jpg');
    @endphp

    <div class="container-fluid page-header-bg py-5 mb-5" style="--page-header-bg: url('{{ $headerImage }}');">
        <div class="container py-5">
            <h1 class="display-4 text-white mb-2">
                {{ $blog->name }}
            </h1>

            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a class="text-white" href="{{ url('/') }}">Home</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a class="text-white" href="{{ route('blog.index') }}">Blog</a>
                    </li>
                    <li class="breadcrumb-item text-white active">
                        {{ $blog->name }}
                    </li>
                </ol>
            </nav>
        </div>
    </div>

    {{-- CONTENT --}}
    <div class="container py-5">
        <div class="row">

            {{-- MAIN CONTENT --}}
            <div class="col-lg-8">

                <article class="mb-5">

                    <img src="{{ asset('storage/' . $blog->cover) }}" class="img-fluid rounded mb-4"
                        alt="{{ $blog->name }}">

                    <div class="mb-3 text-muted">
                        <span class="me-3">
                            <i class="fa fa-calendar-alt me-1"></i>
                            {{ $blog->created_at->translatedFormat('d F Y') }}
                        </span>

                        <span>
                            <i class="fa fa-comments me-1"></i>
                            {{ $blog->comments_count }} Komentar
                        </span>
                    </div>


                    <div class="blog-content">
                        {!! $blog->description !!}
                    </div>
                    {{-- GALERI GAMBAR --}}
                    @if (is_array($blog->image) && count($blog->image))
                        <div class="row g-3 mb-4">

                            @foreach ($blog->image as $img)
                                @php
                                    $path = $img['image'] ?? null;
                                @endphp

                                @if ($path)
                                    <div class="col-md-4 col-6">
                                        <a href="{{ asset('storage/' . $path) }}" data-lightbox="blog-gallery">
                                            <img src="{{ asset('storage/' . $path) }}" class="img-fluid rounded shadow-sm"
                                                style="height: 180px; object-fit: cover; width: 100%;">
                                        </a>
                                    </div>
                                @endif
                            @endforeach

                        </div>
                    @endif


                </article>

                <hr>

                <h4>Komentar</h4>

                @foreach ($comments as $comment)
                    <div class="mb-3">
                        <strong>{{ $comment->name }}</strong>
                        <p>{{ $comment->comment }}</p>

                        @foreach ($comment->replies as $reply)
                            <div class="ms-4 border-start ps-3">
                                <strong>{{ $reply->name }}</strong>
                                <p>{{ $reply->comment }}</p>
                            </div>
                        @endforeach
                    </div>
                @endforeach

                <hr>

                <h5>Tulis Komentar</h5>
                <form method="POST" action="{{ route('blog.comment.store', $blog->slug) }}">
                    @csrf
                    <input type="hidden" name="parent_id">

                    <div class="mb-3">
                        <input type="text" name="name" class="form-control" placeholder="Nama">
                    </div>
                    <div class="mb-3">
                        <input type="email" name="email" class="form-control" placeholder="Email">
                    </div>
                    <div class="mb-3">
                        <textarea name="comment" class="form-control" rows="4" placeholder="Komentar"></textarea>
                    </div>
                    {{-- CAPTCHA --}}
                    <div class="mb-3">
                        <label class="form-label fw-semibold">Verifikasi Keamanan</label>

                        <div class="d-flex align-items-center gap-3 mb-2">
                            <img id="captcha-img" src="{{ $captcha }}" alt="captcha">

                            <button type="button" class="btn btn-sm btn-outline-secondary" onclick="refreshCaptcha()">
                                <i class="fa fa-rotate"></i>
                            </button>
                        </div>

                        <input type="text" name="captcha" class="form-control @error('captcha') is-invalid @enderror"
                            placeholder="Masukkan kode di atas">

                        @error('captcha')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <button class="btn btn-primary">Kirim</button>
                </form>


            </div>

            {{-- SIDEBAR --}}
            <div class="col-lg-4">

                {{-- KATEGORI --}}
                <div class="card mb-4">
                    <div class="card-header fw-bold">
                        Kategori
                    </div>
                    <div class="list-group list-group-flush">
                        @foreach ($kategoriList as $kat)
                            <a href="{{ route('blog.kategori', $kat->slug) }}"
                                class="list-group-item list-group-item-action">
                                {{ $kat->nama }}
                            </a>
                        @endforeach
                    </div>
                </div>

                {{-- ARTIKEL TERKAIT --}}
                <div class="card">
                    <div class="card-header fw-bold">
                        Artikel Lainnya
                    </div>
                    <ul class="list-group list-group-flush">
                        @foreach ($relatedBlogs as $item)
                            <li class="list-group-item">
                                <a href="{{ route('blog.show', $item->slug) }}" class="text-decoration-none">
                                    {{ $item->name }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>

            </div>

        </div>
    </div>
@endsection
@push('script')
    <script>
        function refreshCaptcha() {
            fetch("{{ route('blog.captcha') }}")
                .then(res => res.json())
                .then(data => {
                    document.getElementById('captcha-img').src = data.captcha;
                });
        }
    </script>
@endpush

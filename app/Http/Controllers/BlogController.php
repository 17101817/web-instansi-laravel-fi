<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Slide;
use App\Models\Kontak;
use App\Models\Comment;
use App\Models\Profile;
use App\Models\Kategori;
use App\Models\SettingWeb;
use App\Models\SocialMedia;
use Illuminate\Http\Request;
use Gregwar\Captcha\CaptchaBuilder;
use Illuminate\Support\Facades\Session;

class BlogController extends Controller
{
    //
    /**
     * LIST SEMUA BLOG
     */
    public function index()
    {
        // wajib
        $data['title'] = 'Blog';
        $data['CategoryBlog'] = Kategori::OrderBy('id', 'desc')->get();
        $data['slides'] = Slide::OrderBy('id', 'desc')->get();
        $data['profiles'] = Profile::orderBy('id', 'asc')->get();
        $data['pageHeaderImage'] = Slide::latest()->value('gambar');
        // wajib
        $blogs = Blog::withCount('comments')->orderBy('created_at', 'desc')->paginate(6);
        $data['kategoriList'] = Kategori::orderBy('nama')->get();

        return view('website.blog.index', $data, compact('blogs'));
    }

    /**
     * BLOG PER KATEGORI
     */
    public function kategori(string $slug)
    {
        // wajib
        $data['title'] = 'Kategori';
        $data['CategoryBlog'] = Kategori::OrderBy('id', 'desc')->get();
        $data['slides'] = Slide::OrderBy('id', 'desc')->get();
        $data['profiles'] = Profile::orderBy('id', 'asc')->get();
        $data['pageHeaderImage'] = Slide::latest()->value('gambar');
        // wajib
        $kategori = Kategori::where('slug', $slug)->firstOrFail();

        $blogs = Blog::withCount('comments')->whereJsonContains('kategori_id', $kategori->id)
            ->orderBy('created_at', 'desc')
            ->paginate(6);
        $data['kategori'] = Kategori::where('slug', $slug)->firstOrFail();
        $data['kategoriList'] = Kategori::orderBy('nama')->get();

        return view('website.blog.index', $data, compact('blogs', 'kategori'));
    }

    /**
     * DETAIL BLOG
     */
    public function show(string $slug)
    {

        // wajib
        $data['title'] = 'Detail Blog';
        $data['CategoryBlog'] = Kategori::orderBy('id', 'desc')->get();
        $data['slides'] = Slide::orderBy('id', 'desc')->get();
        $data['profiles'] = Profile::orderBy('id', 'asc')->get();
        $data['pageHeaderImage'] = Slide::latest()->value('gambar');
        // wajib

        $data['blog'] = Blog::withCount('comments')->where('slug', $slug)->firstOrFail();

        $data['comments'] = Comment::where('blog_id', $data['blog']->id)
            ->whereNull('parent_id')
            ->orderBy('created_at', 'asc')
            ->with('replies')
            ->get();

        $data['kategoriList'] = Kategori::orderBy('nama')->get();

        $data['relatedBlogs'] = Blog::where('id', '!=', $data['blog']->id)
            ->latest()
            ->take(5)
            ->get();

        // ✅ CAPTCHA
        $builder = new CaptchaBuilder();
        $builder->build();

        Session::put('blog_captcha', $builder->getPhrase());
        $data['captcha'] = $builder->inline();

        return view('website.blog.show', $data);
    }

    /**
     * SIMPAN KOMENTAR
     */
    public function storeComment(Request $request, string $slug)
    {
        $blog = Blog::where('slug', $slug)->firstOrFail();

        $request->validate([
            'name'    => 'required|string|max:100',
            'email'   => 'required|email',
            'comment' => 'required|string',
            'parent_id' => 'nullable|exists:comments,id',
            'captcha' => 'required|string',
        ], [
            'captcha.required' => 'Captcha wajib diisi.',
        ]);

        // ✅ VALIDASI CAPTCHA (ANTI CASE & SPASI)
        if (
            strtolower(Session::get('blog_captcha')) !==
            strtolower(trim($request->captcha))
        ) {
            return back()
                ->withErrors(['captcha' => 'Captcha tidak sesuai.'])
                ->withInput();
        }

        Comment::create([
            'blog_id'  => $blog->id,
            'parent_id' => $request->parent_id,
            'name'     => $request->name,
            'email'    => $request->email,
            'comment'  => $request->comment,
        ]);

        Session::forget('blog_captcha');

        return back()->with('success', 'Komentar berhasil dikirim');
    }
}

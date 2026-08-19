<?php

namespace App\Http\Controllers;

use App\Models\Faq;
use Illuminate\Http\Request;

class FaqController extends Controller
{
    //
    public function index()
    {
        $data['title'] = 'FAQ';
        $data['faqs'] = Faq::orderBy('id', 'asc')->get();

        return view('website.faq.index', $data);
    }
}

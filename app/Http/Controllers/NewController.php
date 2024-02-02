<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewController extends Controller
{

    public function show()
    {
        return view('News.list', [
            'title' => 'About'
        ]);
    }

    public function index()
    {
        return view('Phone.list', [
            'title' => 'Contact'
        ]);
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MainAdminController extends Controller
{
    //
    public function index()
    {
        return view('Admin.home',[
            'title'=>'Xin Chào Bạn Đến Với Trang Admin'
        ]);
    }
}

<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    public function index()
    {
        return view('Admin.Users.login', [
            'title' => 'Đăng Nhập Hệ Thống'
        ]);
    }

    public function store(Request $request)
    {

        //
        $input = $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6'
        ]);
        if (Auth::attempt($input, (bool) $request->remember_me)) {
            if (Auth::user()->is_active === 0) {
                Auth::logout();
                return back()->withErrors('Tài Khoảng của Bạn đang bị khóa');
            }
            return redirect()->route('admin');
        }
        return back()->withErrors('Đăng Nhập Thất bại');
    }
}

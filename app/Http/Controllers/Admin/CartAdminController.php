<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Services\CartService;
use App\Models\Customer;

class CartAdminController extends Controller
{
    protected $cart;

    public function __construct(CartService $cart)
    {
        $this->cart = $cart;
    }

    public function index()
    {
        return view('Admin.Carts.customer', [
            'title' => 'Danh Sách Đơn Đặt Hàng',
            'customers' => $this->cart->getCustomer()
        ]);
    }

    //
    public function show(Customer $customer)
    {
        $carts = $this->cart->getProductForCart($customer);

        return view('admin.carts.detail', [
            'title' => 'Chi Tiết Đơn Hàng: ' . $customer->name,
            'customer' => $customer,
            'carts' => $carts
        ]);
    }

    public function destroy(Request $request)
    {
        $result = $this->cart->delete($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công sản phẩm'
            ]);
        }

        return response()->json(['error' => true]);
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Menu\CreateFormRequest;
use App\Http\Services\Menu\MenuService;
use App\Models\Menu;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

class MenuController extends Controller
{
    protected $menuService;
    public function __construct(MenuService $menuService)
    {
        $this->menuService = $menuService;
    }

    //
    public function create()
    {
        return view(
            'Admin.Menu.add',
            [
                'title' => 'Thêm Danh Mục',
                'menus' => $this->menuService->getParent()
            ]
        );
    }


    //
    public function store(CreateFormRequest $request)
    {
        $this->menuService->create($request);
        return redirect()->back()->with('success', 'thêm mới thành công');
    }

    //
    public function index()
    {
        return view('Admin.Menu.list', [
            'title' => 'Danh Sách Danh Mục',
            'menus' => $this->menuService->getAll()
        ]);
    }

    //
    public function show(Menu $menu)
    {

        return view('Admin.Menu.edit', [
            'title' => 'Chỉnh Sửa Danh Mục : ' . $menu->name,
            'menu' => $menu,
            'menus' => $this->menuService->getParent()
        ]);
    }


    //
    public function update(Menu $menu, CreateFormRequest $request)
    {
        $this->menuService->update($request, $menu);
        return redirect('login/menu/list');
    }


    //
    public function destroy(Request $request): JsonResponse
    {
        $result = $this->menuService->destroy($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công danh mục'
            ]);
        }
        return response()->json([
            'error' => true
        ]);
    }
}

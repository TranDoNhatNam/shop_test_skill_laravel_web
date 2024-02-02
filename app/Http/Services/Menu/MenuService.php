<?php

namespace App\Http\Services\Menu;

use App\Models\Menu;
use Exception;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;

class MenuService
{
    public function getParent()
    {
        return Menu::where('parent_id', 0)->get();
    }

    public function create($request)
    {
        try {
            $data =   Menu::create([
                'name' => $request->input('name'),
                'parent_id' => $request->input('parent_id'),
                'description' => $request->input('description'),
                'content' => $request->input('content'),
                'active' => $request->input('active'),
            ]);
            $data->Save();
        } catch (Exception $err) {
            Session::flash('erro', $err->getMessage());
            return false;
        }
    }

    public function getAll()
    {
        return Menu::orderbyDesc('id')->paginate(20);
    }


    public function update($request, $menu)
    {
        if ($request->input('parent_id') != $menu->id) {
            $menu->parent_id = $request->input('parent_id');
        }
        $menu->name = $request->input('name');
        $menu->description = $request->input('description');
        $menu->content = $request->input('content');
        $menu->active = $request->input('active');

        $menu->save();

        Session::flash('success', 'Cập nhật thành công danh mục !!');
        return true;
    }

    public function show()
    {
        return Menu::select('name', 'id')
            ->where('parent_id', 0)
            ->orderbyDesc('id')
            ->get();
    }


    public function destroy($request)
    {
        $id = (int)$request->input('id');
        $menu = Menu::where('id', $id)->first();
        if ($menu) {
            return Menu::where('id', $id)->orWhere('parent_id', $id)->delete();
        }

        return false;
    }

    //
    public function getId($id)
    {
        return Menu::where('id', $id)->where('active', 1)->firstOrFail();
    }

    //
    public function getProduct($menu, $request)
    {
        $query = $menu->products()
            ->select('id', 'name', 'price', 'price_sale', 'thumb')
            ->where('active', 1);

        if ($request->input('price')) {
            $query->orderBy('price', $request->input('price'));
        }

        return $query
            ->orderByDesc('id')
            ->paginate(12)
            ->withQueryString();
    }
}

@extends('Admin.main')
@section('head')
    <script src="https://cdn.ckeditor.com/ckeditor5/41.0.0/classic/ckeditor.js"></script>
@endsection
@section('content')
    <form action="{{ route('menu.store') }}" method="POST">
        <div class="card-body">
            <div class="form-group">
                <label for="menu">Tên Danh Mục</label>
                <input type="text" name="name" class="form-control" placeholder="Nhập Tên Danh Mục">
            </div>

            <div class="form-group">
                <label>Danh Mục</label>
                <select class="form-control" name="parent_id">
                    <option value="0"> Danh Mục Cha </option>
                    @foreach ($menus as $menu)
                        <option value="{{ $menu->id }}">{{ $menu->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="form-group">
                <label>Mô Tả </label>
                <textarea name="description" id="description" class="form-control" cols="30" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label>Mô Tả Chi Tiếc</label>
                <textarea name="content" id="content" class="form-control" cols="30" rows="10"></textarea>
            </div>

            <div class="form-group">
                <label>Kích Hoạt</label>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="1" type="radio" id="active"
                        name="active"checked="">
                    <label for="active" class="custom-control-label">Có</label>
                </div>

                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="0" type="radio" id="no_active" name="active">
                    <label for="no_active" class="custom-control-label">Không</label>
                </div>
            </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Tạo Danh Mục</button>
        </div>
        @csrf
    </form>
@endsection

@section('footer')
    <script>
        ClassicEditor
            .create(document.querySelector('#content'))
            .catch(error => {
                console.error(error);
            });
    </script>
@endsection

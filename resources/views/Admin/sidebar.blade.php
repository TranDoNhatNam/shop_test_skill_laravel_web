<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ route('admin') }}" class="brand-link">
        <img src="/template/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
            style="opacity: .8">
        <span class="brand-text font-weight-light">{{ auth()->user()->email }}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="/template/admin/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">{{ auth()->user()->name }}</a>
            </div>
        </div>

        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search"
                    aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-bars"></i>
                        <p>
                            Danh Mục
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('add') }}"
                                onclick="return(confirm('bạn đang chuyển sang thêm danh mục !!'))" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm Danh Mục</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('menu.list') }}"
                                onclick="return(confirm('bạn sẻ chuyển sang trang danh sách'))" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách Danh Mục</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-store-alt"></i>
                        <p>
                            Sản Phẩm
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('product') }}"
                                onclick="return(confirm('bạn đang chuyển sang thêm Sản Phẩm !!'))" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm Sản Phẩm</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('product.list') }}"
                                onclick="return(confirm('bạn sẻ chuyển sang trang danh sách Sản Phẩm'))"
                                class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách Sản Phẩm</p>
                            </a>
                        </li>
                    </ul>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-images"></i>
                        <p> Slider
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('slider') }}" onclick="return(confirm('bạn muốn thêm danh mục !!'))"
                                class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm Slider</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('list') }}" onclick="return(confirm('bạn muốn xem danh sách slider !!'))"
                                class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách Slider</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-cart-plus"></i>
                        <p> Giỏ Hàng
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('cart') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách Đơn Hàng</p>
                            </a>
                        </li>

                    </ul>
                </li>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Trang Quản Lý</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="apple-touch-icon" href="apple-touch-icon.png" />
    <!-- Place favicon.ico in the root directory -->
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

    <link rel="stylesheet" href="css/vendor.css" />
    <link rel="stylesheet" href="css/orders-list.css" />
    <style>
        .input-group-btn {
            display: flex;
        }
    </style>
    <!-- Theme initialization -->
    <script>
        var themeSettings = localStorage.getItem("themeSettings")
            ? JSON.parse(localStorage.getItem("themeSettings"))
            : {};
        var themeName = themeSettings.themeName || "";
        if (themeName) {
            document.write(
                '<link rel="stylesheet" id="theme-style" href="css/app-' +
                themeName +
                '.css">'
            );
        } else {
            document.write(
                '<link rel="stylesheet" id="theme-style" href="css/app.css">'
            );
        }
    </script>
</head>

<body>
    <div class="main-wrapper">
        <div class="app" id="app">
            <header class="header">
                <div class="header-block header-block-collapse d-lg-none d-xl-none">
                    <button class="collapse-btn" id="sidebar-collapse-btn">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>
                <div class="header-block header-block-search">
                    <form role="search">
                        <div class="input-container">
                            <i class="fa fa-search"></i>
                            <input type="search" placeholder="Tìm..." />
                            <div class="underline"></div>
                        </div>
                    </form>
                </div>
                <div class="header-block header-block-nav">
                    <ul class="nav-profile">
                        <li class="notifications new">
                            <a href="" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <sup>
                                    <span class="counter">8</span>
                                </sup>
                            </a>
                            <div class="dropdown-menu notifications-dropdown-menu">

                                <footer>
                                    <ul>
                                        <li>
                                            <a href=""> Xem tất cả </a>
                                        </li>
                                    </ul>
                                </footer>
                            </div>
                        </li>
                        <li class="profile dropdown">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                                aria-haspopup="true" aria-expanded="false">
                                <div class="img" style="
                      background-image: url('https://avatars3.githubusercontent.com/u/3959008?v=3&s=40');
                    "></div>
                                <span class="name"> Admin </span>
                            </a>
                            <div class="dropdown-menu profile-dropdown-menu" aria-labelledby="dropdownMenu1">
                                <a class="dropdown-item" href="account-info.jsp">
                                    <i class="fa fa-user icon"></i> Tài khoản
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fa fa-bell icon"></i> Thông báo
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fa fa-gear icon"></i> Cài đặt
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="../landings/landing/login.jsp">
                                    <i class="fa fa-power-off icon"></i> Đăng xuất
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </header>
            <aside class="sidebar">
                <div class="sidebar-container">
                    <div class="sidebar-header">
                        <div class="brand">
                            <div class="logo">
                                <span class="l l1"></span>
                                <span class="l l2"></span>
                                <span class="l l3"></span>
                                <span class="l l4"></span>
                                <span class="l l5"></span>
                            </div> Quản Lý
                        </div>
                    </div>
                    <nav class="menu">
                        <ul class="sidebar-menu metismenu" id="sidebar-menu">
                            <li class="active">
                                <a href="index.html">
                                    <i class="fa fa-home"></i> Tổng quan </a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-th-large"></i> Quản Lý Đối Tượng
                                    <i class="fa arrow"></i>
                                </a>
                                <ul class="sidebar-nav">
                                    <li>
                                        <a href="#"> Dịch vụ<i class="fa arrow"></i></a>
                                        <ul class="sidebar-nav">
                                            <li>
                                                <a href="./items-list.html"> Danh sách dịch vụ </a>
                                            </li>

                                            <li>
                                                <a href="add-item.jsp"> Thêm dịch vụ </a>
                                            </li>
                                        </ul>
                                    </li>

                                    <li>
                                        <a href="#"> Đơn hàng <i class="fa arrow"></i></a>
                                        <ul class="sidebar-nav">
                                            <li>
                                                <a href="./orders-list.html"> Danh sách đơn hàng </a>
                                            </li>
                                            <li>
                                                <a href="./add-order.html"> Thêm đơn hàng </a>
                                            </li>

                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#"> Người dùng <i class="fa arrow"></i></a>
                                        <ul class="sidebar-nav">
                                            <li>
                                                <a href="./users-list.html"> Danh sách người dùng </a>
                                            </li>

                                            <li>
                                                <a href="./add-users.html"> Thêm người dùng</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">  Cửa hàng <i class="fa arrow"></i></a>
                                        <ul class="sidebar-nav">
                                            <li>
                                                <a href="./store-list.html"> Danh sách cửa hàng </a>
                                            </li>

                                            <li>
                                                <a href="./add-store.html"> Thêm cửa hàng</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-area-chart"></i> Thống kê
                                    <i class="fa arrow"></i>
                                </a>
                                <ul class="sidebar-nav">

                                    <li>
                                        <a href="static-tables.html"> Bảng </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <footer class="sidebar-footer">
                    <ul class="sidebar-menu metismenu" id="customize-menu">
                        <li>
                            <ul>
                                <li class="customize">
                                    <div class="customize-item">
                                        <div class="row customize-header">
                                            <div class="col-4"> </div>
                                            <div class="col-4">
                                                <label class="title">Cố dịnh</label>
                                            </div>
                                            <div class="col-4">
                                                <label class="title">Linh hoạt</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="title">Thanh công cụ:</label>
                                            </div>
                                            <div class="col-4">
                                                <label>
                                                    <input class="radio" type="radio" name="sidebarPosition"
                                                        value="sidebar-fixed">
                                                    <span></span>
                                                </label>
                                            </div>
                                            <div class="col-4">
                                                <label>
                                                    <input class="radio" type="radio" name="sidebarPosition" value="">
                                                    <span></span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label class="title">Tiêu đề:</label>
                                            </div>
                                            <div class="col-4">
                                                <label>
                                                    <input class="radio" type="radio" name="headerPosition"
                                                        value="header-fixed">
                                                    <span></span>
                                                </label>
                                            </div>
                                            <div class="col-4">
                                                <label>
                                                    <input class="radio" type="radio" name="headerPosition" value="">
                                                    <span></span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="customize-item">
                                        <ul class="customize-colors">
                                            <li>
                                                <span class="color-item color-red" data-theme="red"></span>
                                            </li>
                                            <li>
                                                <span class="color-item color-orange" data-theme="orange"></span>
                                            </li>
                                            <li>
                                                <span class="color-item color-green active" data-theme=""></span>
                                            </li>
                                            <li>
                                                <span class="color-item color-seagreen" data-theme="seagreen"></span>
                                            </li>
                                            <li>
                                                <span class="color-item color-blue" data-theme="blue"></span>
                                            </li>
                                            <li>
                                                <span class="color-item color-purple" data-theme="purple"></span>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <a href="">
                                <i class="fa fa-cog"></i> Sửa đổi giao diện </a>
                        </li>
                    </ul>
                </footer>
            </aside>

            <div class="sidebar-overlay" id="sidebar-overlay"></div>
            <div class="sidebar-mobile-menu-handle" id="sidebar-mobile-menu-handle"></div>
            <div class="mobile-menu-handle"></div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <article class="content item-editor-page">
                            <div class="title-block">
                                <h3 class="title"> Thêm thông tin đơn hàng
                                    <span class="sparkline bar" data-type="bar"></span>
                                </h3>
                            </div>
                            <form name="item">
                                <div class="card card-block">
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> Tên người gửi: </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control boxed" placeholder="Nhập tên">
                                        </div>
                                    </div>
            
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> Loại giao hàng: </label>
                                        <div class="col-sm-10">
                                            <select class="form-control boxed" style="width: 200px">
                                                <option value="option1">Giao hàng nhanh</option>
                                                <option value="option2">Giao hàng siêu tốc</option>
                                                <option value="option3">Giao hàng ngoại địa</option>
                                                <!-- Thêm các tùy chọn khác ở đây -->
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> Tên gói hàng: </label>
                                        <div class="col-sm-10">
                                            <input type="text" style="width:200px" class="form-control boxed"
                                                placeholder="Nhập tên gói hàng">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> SĐT người gửi: </label>
                                        <div class="col-sm-10">
                                            <input type="number" style="width:200px" class="form-control boxed"
                                                placeholder="Nhập sđt">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> Tên người nhận: </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control boxed" placeholder="Nhập tên">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> SĐT người nhận: </label>
                                        <div class="col-sm-10">
                                            <input type="number" style="width:200px" class="form-control boxed"
                                                placeholder="Nhập sđt">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right">Địa chỉ nhận hàng: </label>
                                        <div class="col-sm-10">
                                            <input type="text" id="address" class="form-control boxed" placeholder="Nhập tên">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> Tỉnh/Thành phố: </label>
                                        <div class="col-sm-10">
                                            <select class="form-control boxed" id="provinceDropdown" style="width:200px">
                                                <!-- Options will be dynamically added here via JavaScript -->
                                            </select>
                                        </div>
                                    </div>
            
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> Huyện/Quận: </label>
                                        <div class="col-sm-10">
                                            <select class="form-control boxed" id="districtDropdown" style="width:200px">
                                                <!-- Options will be dynamically added here via JavaScript -->
                                            </select>
                                        </div>
                                    </div>
            
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> Xã/Phường: </label>
                                        <div class="col-sm-10">
                                            <select class="form-control boxed" id="wardDropdown" style="width:200px">
                                                <!-- Options will be dynamically added here via JavaScript -->
                                            </select>
                                        </div>
                                    </div>
        
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> Cân nặng: </label>
                                        <div class="col-sm-10">
                                            <input type="number" class="form-control boxed" placeholder="Nhập...">
                                        </div>
                                    </div>
            
                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label text-xs-right"> Ảnh gói hàng: </label>
                                        <div class="col-sm-10">
                                            <div class="images-container">
                                                <div class="image-container">
                                                    <div class="controls">
                                                        <a href="" class="control-btn move">
                                                            <i class="fa fa-arrows"></i>
                                                        </a>
                                                        <a href="" class="control-btn star">
                                                            <i class="fa"></i>
                                                        </a>
                                                        <a href="#" class="control-btn remove" data-toggle="modal"
                                                            data-target="#confirm-modal">
                                                            <i class="fa fa-trash-o"></i>
                                                        </a>
                                                    </div>
                                                    <div class="image"
                                                        style="background-image:url('../landings/assets/asset 1.jpeg')"></div>
                                                </div>
                                                <a href="#" class="add-image" data-toggle="modal" data-target="#modal-media">
                                                    <div class="image-container new">
                                                        <div class="image">
                                                            <i class="fa fa-plus"></i>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
            
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-10 col-sm-offset-2">
                                        <button type="submit" class="btn btn-primary"> Lưu </button>
                                    </div>
                                </div>
            
                            </form>
                        </article>
                    </div>
                    <div class="col-md-4 total-section" style="margin-top: 100px;">
                        <h3>Tổng Giá Tiền</h3>
                        <form name="total" id="total-form">
                            <div class="form-group row">
                                <label class="col-sm-4 form-control-label text-xs-right"> Số tiền thu hộ: </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control boxed" id="amount-collected" value="0" placeholder="Nhập số tiền">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 form-control-label text-xs-right"> Phí ship (%): </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control boxed" id="shipping-fee" placeholder="Nhập phí ship">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 form-control-label text-xs-right"> Khoảng cách (km): </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control boxed" id="distance" placeholder="Nhập khoảng cách">
                                </div>
                            </div>
                    
                            <div class="form-group row">
                                <label class="col-sm-4 form-control-label text-xs-right"> Người trả phí: </label>
                                <div class="col-sm-8">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="sender-pays" value="option1"> Người gửi
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="receiver-pays" value="option2"> Người nhận
                                    </label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 form-control-label text-xs-right"> Tổng tiền: </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control boxed" id="total-amount" placeholder="" readonly>
                                </div>
                            </div>
                            <!-- ... (Any additional fields you may want to add) ... -->
                    
                            <div class="form-group row">
                                <div class="col-sm-10 col-sm-offset-2">
                                    <button type="button" class="btn btn-primary" > Xác nhận </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="modal-media">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Thư viện ảnh</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                <span class="sr-only">Đóng</span>
                            </button>
                        </div>
                        <div class="modal-body modal-tab-container">
                            <ul class="nav nav-tabs modal-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link" href="#gallery" data-toggle="tab" role="tab">Gallery</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" href="#upload" data-toggle="tab" role="tab">Upload</a>
                                </li>
                            </ul>
                            <div class="tab-content modal-tab-content">
                                <div class="tab-pane fade" id="gallery" role="tabpanel">
                                    <div class="images-container">
                                        <div class="row">
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/brad_frost/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/_everaldo/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/eduardo_olv/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/brad_frost/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/_everaldo/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/eduardo_olv/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/brad_frost/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/_everaldo/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/eduardo_olv/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/brad_frost/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/_everaldo/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
                                                <div class="image-container">
                                                    <div class="image"
                                                        style="background-image:url('https://s3.amazonaws.com/uifaces/faces/twitter/eduardo_olv/128.jpg')">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade active in" id="upload" role="tabpanel">
                                    <div class="upload-container">
                                        <div id="dropzone">
                                            <form action="/" method="POST" enctype="multipart/form-data"
                                                class="dropzone needsclick dz-clickable" id="demo-upload">
                                                <div class="dz-message-block">
                                                    <div class="dz-message needsclick"> Drop files here or click to
                                                        upload. </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Insert Selected</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            
            <!-- /.modal -->
            <div class="modal fade" id="confirm-modal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">
                                <i class="fa fa-warning"></i> Lưu ý
                            </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Bạn có muốn thực hiện hành động này?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Có</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
        </div>
    </div>
    <!-- Reference block for JS -->
    <div class="ref" id="ref">
        <div class="color-primary"></div>
        <div class="chart">
            <div class="color-primary"></div>
            <div class="color-secondary"></div>
        </div>
    </div>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-80463319-4', 'auto');
        ga('send', 'pageview');
    </script>
    <script src="js/vendor.js"></script>
    <script src="js/app.js"></script>
    <script>
        $('.foo').click(function () {
            $(this).toggleClass('active');
        })
        $('.size').click(function () {
            $(this).toggleClass('active');
        })
    </script>
    <script>
        $('.form-control').on('change', function () {
            if ($(this).val() == 'other') {
                $(this).after('<input placeholder="Nhập..." type="text" name="' + $(this).attr('name') + '" class="otherInput form-control boxed" style="width:50% !important; margin-top:5px;border: 1px solid #ced4da;border-radius: 0.25rem;"/>');
            } else {
                if ($(this).next().is('input.otherInput')) {
                    $(this).next().remove();
                };
            };
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Lấy dữ liệu tỉnh/thành phố từ API
            axios.get('https://provinces.open-api.vn/api/?depth=2')
                .then(function (response) {
                    // Xử lý dữ liệu và cập nhật dropdown tỉnh/thành phố
                    var provinceDropdown = document.getElementById('provinceDropdown');
                    response.data.forEach(function (province) {
                        var option = document.createElement('option');
                        option.value = province.code;
                        option.text = province.name;
                        provinceDropdown.add(option);
                    });
                })
                .catch(function (error) {
                    console.error('Error fetching provinces:', error);
                });

            // Gán sự kiện onchange cho dropdown tỉnh/thành phố để cập nhật dropdown huyện/quận
            var provinceDropdown = document.getElementById('provinceDropdown');
            var districtDropdown = document.getElementById('districtDropdown');
            var wardDropdown = document.getElementById('wardDropdown');

            provinceDropdown.addEventListener('change', function () {
                // Lấy dữ liệu huyện/quận từ API dựa vào tỉnh/thành phố đã chọn
                axios.get(`https://provinces.open-api.vn/api/p/${provinceDropdown.value}?depth=2`)
                    .then(function (response) {
                        // Xử lý dữ liệu và cập nhật dropdown huyện/quận
                        districtDropdown.innerHTML = '<option value="">Chọn huyện/quận</option>';
                        response.data.districts.forEach(function (district) {
                            var option = document.createElement('option');
                            option.value = district.code;
                            option.text = district.name;
                            districtDropdown.add(option);
                        });
                    })
                    .catch(function (error) {
                        console.error('Error fetching districts:', error);
                    });
            });

            // Gán sự kiện onchange cho dropdown huyện/quận để cập nhật dropdown xã/phường
            districtDropdown.addEventListener('change', function () {
                // Lấy dữ liệu xã/phường từ API dựa vào huyện/quận đã chọn
                axios.get(`https://provinces.open-api.vn/api/d/${districtDropdown.value}?depth=2`)
                    .then(function (response) {
                        // Xử lý dữ liệu và cập nhật dropdown xã/phường
                        wardDropdown.innerHTML = '<option value="">Chọn xã/phường</option>';
                        response.data.wards.forEach(function (ward) {
                            var option = document.createElement('option');
                            option.value = ward.code;
                            option.text = ward.name;
                            wardDropdown.add(option);
                        });
                    })
                    .catch(function (error) {
                        console.error('Error fetching wards:', error);
                    });
            });
        });
    </script>
<script>
    // Hàm tính toán và cập nhật tổng tiền
    function calculateTotal() {
        // Lấy giá trị từ các ô input
        var amountCollected = parseFloat($('#amount-collected').val()) || 0;
        var shippingFeePercentage = parseFloat($('#shipping-fee').val()) || 0;
        var distance = parseFloat($('#distance').val()) || 0;
        var senderPays = $('#sender-pays').prop('checked');
        var receiverPays = $('#receiver-pays').prop('checked');

        // Tính toán tổng tiền
        var totalAmount = amountCollected;

        if (shippingFeePercentage > 0) {
            totalAmount += (amountCollected * (shippingFeePercentage / 100));
        }

        if (distance > 0) {
            // Thêm logic tính toán dựa trên khoảng cách
            // Ví dụ: totalAmount += someCalculationBasedOnDistance;

        }

        if (senderPays) {
            // Thêm logic nếu người gửi trả phí
        }

        if (receiverPays) {
            // Thêm logic nếu người nhận trả phí
        }

        // Cập nhật giá trị của ô Tổng tiền
        $('#total-amount').val(totalAmount.toFixed(2));
    }

    // Gọi hàm calculateTotal khi giá trị của các ô input thay đổi
    $('#amount-collected, #shipping-fee, #distance, #sender-pays, #receiver-pays').on('input', function () {
        calculateTotal();
    });
</script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Trang Quản Lý </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->
    <link rel="stylesheet" href="css/vendor.css">
    <!-- Theme initialization -->
    <script>
        var themeSettings = (localStorage.getItem('themeSettings')) ? JSON.parse(localStorage.getItem('themeSettings')) :
            {};
        var themeName = themeSettings.themeName || '';
        if (themeName) {
            document.write('<link rel="stylesheet" id="theme-style" href="css/app-' + themeName + '.css">');
        }
        else {
            document.write('<link rel="stylesheet" id="theme-style" href="css/app.css">');
        }
    </script>
</head>

<body>
<div class="main-wrapper">
    <div class="app" id="app">

        <jsp:include page="./header/header.jsp"/>

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
                            <a href="index.jsp">
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
                                            <a href="items-list.jsp"> Danh sách dịch vụ </a>
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
                                            <a href="orders-list.jsp"> Danh sách đơn hàng </a>
                                        </li>
                                        <li>
                                            <a href="add-order.jsp"> Thêm đơn hàng </a>
                                        </li>

                                    </ul>
                                </li>
                                <li>
                                    <a href="#">  Người dùng <i class="fa arrow"></i></a>
                                    <ul class="sidebar-nav">
                                        <li>
                                            <a href="./users-list.html"> Danh sách người dùng </a>
                                        </li>

                                        <li>
                                            <a href="add-users.jsp"> Thêm người dùng</a>
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
                                            <a href="add-store.jsp"> Thêm cửa hàng</a>
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
                                    <a href="static-tables.jsp">  Bảng  </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>

            <jsp:include page="./footer/footer.jsp"/>

        </aside>
        <div class="sidebar-overlay" id="sidebar-overlay"></div>
        <div class="sidebar-mobile-menu-handle" id="sidebar-mobile-menu-handle"></div>
        <div class="mobile-menu-handle"></div>
        <article class="content item-editor-page">
            <div class="title-block">
                <h3 class="title"> Chỉnh sửa cửa hàng
                    <span class="sparkline bar" data-type="bar"></span>
                </h3>
            </div>
            <form name="item">
                <div class="card card-block">
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label text-xs-right"> Tên cửa hàng: </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control boxed" placeholder="Nhập tên">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label text-xs-right"> Email: </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control boxed" placeholder="Nhập email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label text-xs-right"> Vai trò: </label>
                        <div class="col-sm-10">
                            <select class="form-control boxed" style="width: 200px">
                                <option value="option3">Quản lý</option>
                                <option value="option1">Khách hàng</option>
                                <option value="option2">Nhân Viên</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label text-xs-right"> SĐT: </label>
                        <div class="col-sm-10">
                            <input type="text" style="width:200px" class="form-control boxed" placeholder="Nhập sđt">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label text-xs-right"> Địa chỉ: </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control boxed" placeholder="Nhập...">
                        </div>
                    </div>
        
                    <!-- Thêm ô tìm kiếm người dùng -->
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label text-xs-right"> Tìm kiếm nhân viên: </label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control boxed" placeholder="Nhập tên nhân viên">
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="btn btn-secondary">Tìm kiếm</button>
                        </div>
                    </div>
        
                    <!-- Thêm nút để thêm nhân viên -->
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label text-xs-right"></label>
                        <div class="col-sm-10">
                            <button type="button" class="btn btn-primary">Thêm Nhân Viên</button>
                        </div>
                    </div>
        
                    <!-- Hiển thị danh sách nhân viên -->
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label text-xs-right"> Danh sách nhân viên: </label>
                        <div class="col-sm-10">
                            <ul class="list-group">
                                <!-- Dùng JavaScript để thêm các mục nhân viên vào đây -->
                            </ul>
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
</body>

</html>
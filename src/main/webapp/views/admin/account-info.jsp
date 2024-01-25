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
    <link rel="stylesheet" href="./css/vendor.css">
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
   

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
                                                <a href="./add-item.html"> Thêm dịch vụ </a>
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
                                        <a href="#">  Người dùng <i class="fa arrow"></i></a>
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

                <jsp:include page="./footer/footer.jsp"/>

            </aside>
            <div class="sidebar-overlay" id="sidebar-overlay"></div>
            <div class="sidebar-mobile-menu-handle" id="sidebar-mobile-menu-handle"></div>
            <div class="mobile-menu-handle"></div>
            <article class="content dashboard-page">
                <section class="section">
                    <div class="row sameheight-container">
                        <!-- Existing content (dịch vụ bán chạy, Phương thức thanh toán) -->
            
                        <!-- New content for user account information and bank details -->
                        <div class="col-xl-8">
                            <div class="card sameheight-item user-account" data-exclude="xs,sm,lg">
                                <div class="card-header bordered">
                                    <div class="header-block">
                                        <h3 class="title">Thông tin tài khoản</h3>
                                    </div>
                                    <div class="header-block pull-right">
                                        <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#updateAccountModal">Cập nhật thông tin</a>
                                        <a href="#" class="btn btn-secondary btn-sm" data-toggle="modal" data-target="#changePasswordModal">Đổi mật khẩu</a>
                                        <a href="#" class="btn btn-secondary btn-sm" data-toggle="modal" data-target="#confirmAccount">Kích hoạt</a>
                        
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="statusDropdown">
                                                Trạng thái
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#" style="text-decoration: none; padding: 10px;" data-status="active">Kích hoạt</a>
                                                <a class="dropdown-item" href="#" style="text-decoration: none; padding: 10px;" data-status="inactive">Chưa kích hoạt</a>
                                            </div>
                                        </div>
                                        <span class="account-status-text active">Kích hoạt</span>
                                     
                                    </div>
                                </div>
                                <div class="card-block">

                                    <div class="form-group">
                                        <label for="username">Tên người dùng:</label>
                                        <input type="text" id="username" class="form-control" value="Admin">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email:</label>
                                        <input type="email" id="email" class="form-control" value="admin@gmail.com">
                                    </div>
                                    <div class="form-group">
                                        <label for="address">Địa chỉ:</label>
                                        <input type="text" id="address" class="form-control" value="" placeholder="Chi tiết">
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label text-xs-right"> Tỉnh/Thành phố: </label>
                                        <div class="col-sm-10">
                                            <select class="form-control boxed" id="provinceDropdown" style="width:200px">
                                                <!-- Options will be dynamically added here via JavaScript -->
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label text-xs-right"> Huyện/Quận: </label>
                                        <div class="col-sm-10">
                                            <select class="form-control boxed" id="districtDropdown" style="width:200px">
                                                <!-- Options will be dynamically added here via JavaScript -->
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label text-xs-right"> Xã/Phường: </label>
                                        <div class="col-sm-10">
                                            <select class="form-control boxed" id="wardDropdown" style="width:200px">
                                                <!-- Options will be dynamically added here via JavaScript -->
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone">Số điện thoại:</label>
                                        <input type="phone" id="phone" class="form-control" value="0374162824">
                                    </div>
                                    <div class="form-group">
                                        <label for="phone">Mật khẩu: </label>
                                        <input type="password" id="password" class="form-control" value="0374162824">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
            <!-- Change Password Modal -->
<div class="modal fade" id="changePasswordModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Đổi mật khẩu</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Add your form fields for changing password -->
                <form>
                    <div class="form-group">
                        <label for="currentPassword">Mật khẩu hiện tại:</label>
                        <input type="password" class="form-control" id="currentPassword">
                    </div>
                    <div class="form-group">
                        <label for="newPassword">Mật khẩu mới:</label>
                        <input type="password" class="form-control" id="newPassword">
                    </div>
                    <div class="form-group">
                        <label for="confirmNewPassword">Xác nhận mật khẩu mới:</label>
                        <input type="password" class="form-control" id="confirmNewPassword">
                    </div>
                    <button type="submit" class="btn btn-primary">Đổi mật khẩu</button>
                </form>
            </div>
        </div>
    </div>
</div>
                        <div class="col-xl-4">
                            <div class="card sameheight-item" data-exclude="xs,sm,lg">
                                <div class="card-header">
                                    <div class="header-block">
                                        <h3 class="title">Thêm thông tin ngân hàng</h3>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <form>
                                        <div class="form-group">
                                            <label for="bankName">Tên ngân hàng:</label>
                                            <input type="text" class="form-control" id="bankName" placeholder="Nhập tên ngân hàng">
                                        </div>
                                        <div class="form-group">
                                            <label for="accountName">Tên tài khoản:</label>
                                            <input type="text" class="form-control" id="accountName" placeholder="Nhập tên tài khoản">
                                        </div>
                                        <div class="form-group">
                                            <label for="accountNumber">Số tài khoản:</label>
                                            <input type="text" class="form-control" id="accountNumber" placeholder="Nhập số tài khoản">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Lưu thông tin ngân hàng</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- End of new content for user account information and bank details -->
                    </div>
                </section>
            </article>
            <!-- /.modal -->
            <div class="modal fade" id="confirm-modal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">
                                <i class="fa fa-warning"></i> Alert
                            </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure want to do this?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Yes</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
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
    <script src="js/jquery-3.6.1.min.js"></script>
    <script src="js/vendor.js"></script>
    <script src="js/app.js"></script>
    <script>
        function getRandomDate() {
            const maxDate = Date.now();
            const timestamp = Math.floor(Math.random() * maxDate);
            var d = new Date(timestamp);
            return d.getDate()  + "-" + (d.getMonth()+1) + "-" + d.getFullYear();
        }
        $(document).ready(function() {
            var object = $.parseJSON(`[
            {
            "id": "1",
            "name": "Giao hàng nhanh",
            "price": "420000",
            "categories": "nội địa",
            "imglink": "",
            "type": "",
            "subimglink": "",
            "time": ""
        },
        {
            "id": "2",
            "name": "Giao hàng siêu tốc",
            "price": "420000",
            "categories": "nội địa",
            "imglink": "",
            "type": "",
            "subimglink": "",
            "time": ""
        },
        {
            "id": "3",
            "name": "Giao ngoại địa",
            "price": "420000",
            "categories": "Ngoại địa",
            "imglink": "",
            "type": "",
            "subimglink": "",
            "time": ""
        }]`);
            function initRender() {
                var listProducts = object.map(function(element) {
                        return `<li class="item blogBox moreBox" style="display:none">
                        <div class="item-row">

                            <div class="item-col item-col-title no-overflow">
                                <div>
                                    <h4 class="item-title no-wrap"> ${element.name} </h4>
                                </div>
                            </div>
                            <div class="item-col item-col-sales">
                                <div class="item-heading">Đã bán</div>
                                <div> ${Math.floor(Math.random() * 10000)} </div>
                            </div>
                            <div class="item-col item-col-stats">
                                <div class="item-heading">Tồn kho</div>
                                <div class="no-overflow">
                                    <div class="item-stats" data-type="bar"> ${Math.floor(Math.random() * 100)}</div>
                                </div>
                            </div>
                            <div class="item-col item-col-date">
                                <div class="item-heading">Ngày thêm</div>
                                <div> ${getRandomDate()} </div>
                            </div>
                        </div>
                    </li>`
                })
                var renderList = listProducts.join('');
                $('#items').html(renderList);
            }
            initRender();
            function defaultLoadmore() {
                $(".moreBox").slice(0, 6).show();
                $("#loadMore").click(function (e) {
                  e.preventDefault();
                  $(".moreBox:hidden").slice(0, 6).show();
                  $(".col-xl-8").css({"overflow":"auto"})
                });
            }
            defaultLoadmore();
            $("#loadLess").click(function() {
                initRender();
                defaultLoadmore();
            });
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {

            axios.get('https://provinces.open-api.vn/api/?depth=2')
                .then(function (response) {
                    
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

</body>

</html>
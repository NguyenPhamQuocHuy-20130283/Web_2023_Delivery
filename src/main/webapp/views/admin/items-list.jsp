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
    <style>
        .input-group-btn {
            display: flex;
        }
    </style>
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

<<<<<<<< Updated upstream:src/main/webapp/views/web/admin/items-list.html
========
                                            <li>
                                                <a href="add-store.jsp"> Thêm cửa hàng</a>
                                            </li>
                                        </ul>
                                    </li>
>>>>>>>> Stashed changes:src/main/webapp/views/web/admin/items-list.jsp
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
            <article class="content items-list-page">
                <div class="title-search-block">
                    <div class="title-block">
                        <div class="row">
                            <div class="col-md-6">
                                <h3 class="title"> Danh sách dịch vụ
                                    <a href="add-item.jsp" class="btn btn-primary btn-sm rounded-s"> Thêm dịch vụ
                                    </a>

                                    <div class="action dropdown">
                                        <button class="btn  btn-sm rounded-s btn-secondary dropdown-toggle"
                                            type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false"> Hành động </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                            <a class="dropdown-item hidden-item" href="#">
                                                <i class="fa fa-pencil-square-o icon"></i>Ẩn dịch vụ</a>
                                            <a class="dropdown-item delete-item" href="#" data-toggle="modal"
                                                data-target="#confirm-modal">
                                                <i class="fa fa-close icon"></i>Xoá dịch vụ</a>
                                        </div>
                                    </div>
                                    <div class="action dropdown">

                                        <div class="p-4 dropdown-menu" aria-labelledby="dropdownMenu1">




                                        </div>
                                    </div>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="items-search">
                        <form class="form-inline">
                            <div class="input-group">
                                <input type="text" class="form-control boxed rounded-s" placeholder="Tìm kiếm...">
                                <span class="input-group-btn">
                                    <button class="btn btn-secondary rounded-s" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="card item">
                    <ul class="item-list striped" id="items">
                        <li class="item item-list-header" id="first-child">
                            <div class="item-row">
                                <div class="item-col fixed item-col-check">
                                    <label class="item-check" id="select-all-items">
                                        <input type="checkbox" class="checkbox">
                                        <span></span>
                                    </label>
                                </div>

                                <div class="item-col item-col-header item-col-title">
                                    <div>
                                        <span>Tên dịch vụ</span>
                                    </div>
                                </div>
                                <div class="item-col item-col-header item-col-sales">
                                    <div>
                                        <span>Mã dịch vụ</span>
                                    </div>
                                </div>
                                <div class="item-col item-col-header item-col-stats">
                                    <div class="no-overflow">
                                        <span>Đã bán</span>
                                    </div>
                                </div>

                                <div class="item-col item-col-header item-col-author">
                                    <div class="no-overflow" style="text-align: center">
                                        <span>Trạng thái</span>
                                    </div>
                                </div>
                                <div class="item-col item-col-header item-col-date">
                                    <div>
                                        <span>Ngày thêm</span>
                                    </div>
                                </div>
                                <div class="item-col item-col-header fixed item-col-actions-dropdown"></div>
                            </div>
                        </li>
                        <div id="appendItem">
                        </div>
                    </ul>
                </div>
                <nav class="text-right">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="javascript:prevPage()" id="btn_prev"> Trước </a>
                        </li>
                        <li class="page-item active">
                            <a class="page-link" id="page" href="#"> 1 </a>
                        </li>
                        <a class="page-link" href="javascript:nextPage()" id="btn_next"> Kế tiếp </a>
                        </li>
                    </ul>
                </nav>
            </article>
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
                            <p>Bạn có chắc muốn xoá dịch vụ này ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary yes" data-dismiss="modal">Có</button>
                            <button type="button" class="btn btn-secondary no" data-dismiss="modal">Không</button>
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
    <script src="./js/jquery-3.6.1.min.js"></script>
    <script src="./js/vendor.js"></script>
    <script src="./js/app.js"></script>
    <script>
        var current_page = 1;
        var records_per_page = 2;

        var objJson = $.parseJSON(`[
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

        function prevPage() {
            if (current_page > 1) {
                current_page--;
                changePage(current_page);
            }
        }

        function nextPage() {
            if (current_page < numPages()) {
                current_page++;
                changePage(current_page);
            }
        }
        function init() {
            var $itemActions = $(".item-actions-dropdown");

            $(document).on('click', function (e) {
                if (!$(e.target).closest('.item-actions-dropdown').length) {
                    $itemActions.removeClass('active');
                }
            });

            $('.item-actions-toggle-btn').on('click', function (e) {
                e.preventDefault();
                var $thisActionList = $(this).closest('.item-actions-dropdown');
                $itemActions.not($thisActionList).removeClass('active');
                $thisActionList.toggleClass('active');
            });
        }
        function changePage(page) {
            var btn_next = document.getElementById("btn_next");
            var btn_prev = document.getElementById("btn_prev");
            var list = document.getElementById("appendItem");
            var page_span = document.getElementById("page");
            if (page < 1) page = 1;
            if (page > numPages()) page = numPages();

            list.innerHTML = "";

            for (var i = (page - 1) * records_per_page; i < (page * records_per_page) && i < objJson.length; i++) {
                list.innerHTML += ` <li class="item">
                    <div class="item-row">
                        <div class="item-col fixed item-col-check">
                            <label class="item-check" id="select-all-items">
                                <input type="checkbox" class="checkbox">
                                <span></span>
                            </label>
                        </div>

                        <div class="item-col fixed pull-left item-col-title">
                            <div class="item-heading">Tên dịch vụ</div>
                            <div>
                                <a>
                                    <h4 class="item-title">${objJson[i].name}</h4>
                                </a>
                            </div>
                        </div>
                        <div class="item-col item-col-sales">
                            <div class="item-heading">Mã dịch vụ</div>
                            <div class="sales" style="text-align: center"> ${objJson[i].id} </div>
                        </div>
                        <div class="item-col item-col-stats no-overflow">
                            <div class="item-heading">Đã bán</div>
                            <div class="no-overflow"> ${Math.floor(Math.random() * 10000)}
                            </div>
                        </div>

                        <div class="item-col item-col-author">
                            <div class="item-heading">Trạng Thái</div>
                            <div class="no-overflow" style="text-align: center">
                                <a>${Math.floor(Math.random() * 2) == 1 ? "active" : "hidden"}</a>
                            </div>
                        </div>
                        <div class="item-col item-col-date">
                            <div class="item-heading">Ngày thêm</div>
                            <div class="no-overflow"> ${getRandomDate()} </div>
                        </div>
                        <div class="item-col fixed item-col-actions-dropdown">
                            <div class="item-actions-dropdown">
                                <a class="item-actions-toggle-btn">
                                    <span class="inactive">
                                        <i class="fa fa-cog"></i>
                                    </span>
                                    <span class="active">
                                        <i class="fa fa-chevron-circle-right"></i>
                                    </span>
                                </a>
                                <div class="item-actions-block">
                                    <ul class="item-actions-list">
                                        <li>
                                            <a class="remove" href="#" data-toggle="modal" data-target="#confirm-modal">
                                                <i class="fa fa-trash-o "></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="edit"  href="item-editor.html">
                                                <i class="fa fa-pencil"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>`
                init()
            }
            page_span.innerHTML = page;

            if (page == 1) {
                btn_prev.style.visibility = "hidden";
            } else {
                btn_prev.style.visibility = "visible";
            }

            if (page == numPages()) {
                btn_next.style.visibility = "hidden";
            } else {
                btn_next.style.visibility = "visible";
            }
        }

        function numPages() {
            return Math.ceil(objJson.length / records_per_page);
        }

        window.onload = function () {
            changePage(1);
        };

        function getRandomDate() {
            const maxDate = Date.now();
            const timestamp = Math.floor(Math.random() * maxDate);
            var d = new Date(timestamp);
            return d.getDate() + "-" + (d.getMonth() + 1) + "-" + d.getFullYear();
        }
    </script>
</body>

</html>
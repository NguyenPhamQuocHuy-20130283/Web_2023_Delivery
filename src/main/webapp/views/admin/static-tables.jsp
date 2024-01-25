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
            if (themeName)
            {
                document.write('<link rel="stylesheet" id="theme-style" href="css/app-' + themeName + '.css">');
            }
            else
            {
                document.write('<link rel="stylesheet" id="theme-style" href="css/app.css">');
            }
        </script>
    </head>
    <body>
        <div class="main-wrapper">
            <div class="app" id="app">

                <jsp:include page="../header/header.jsp"/>

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
<<<<<<<< Updated upstream:src/main/webapp/views/web/admin/static-tables.html

========
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
>>>>>>>> Stashed changes:src/main/webapp/views/web/admin/static-tables.jsp
                                    </ul>
                                </li>
                                <li>
                                    <a href="">
                                        <i class="fa fa-area-chart"></i> Báo cáo
                                        <i class="fa arrow"></i>
                                    </a>
                                    <ul class="sidebar-nav">

                                        <li>
                                            <a href="comments-list.html"> Danh sách báo cáo </a>
                                        </li>
                                    </ul>
                                    <ul class="sidebar-nav">

                                        <li>
                                            <a href="add-comments.html"> Thêm báo cáo </a>
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
                                            <a href="static-tables.html"> Bảng  </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>

                    <jsp:include page="..footer/footer.jsp"/>

                </aside>
                <div class="sidebar-overlay" id="sidebar-overlay"></div>
                <div class="sidebar-mobile-menu-handle" id="sidebar-mobile-menu-handle"></div>
                <div class="mobile-menu-handle"></div>
                <article class="content static-tables-page">
                    <div class="title-block">
                        <h1 class="title"> Bảng thống kê </h1>
                    </div>
                    <section class="section">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-block">
                                        <div class="card-title-block">
                                            <h3 class="title"> dịch vụ được thích nhất </h3>
                                        </div>
                                        <section class="example">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>STT</th>
                                                        <th>Mã dịch vụ</th>
                                                        <th>Tên dịch vụ</th>
                                                        <th>Lượt thích</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Larry</td>
                                                        <td>the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </section>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-block">
                                        <div class="card-title-block">
                                            <h3 class="title"> dịch vụ được sử dụng nhiềU nhất </h3>
                                        </div>
                                        <section class="example">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>STT</th>
                                                        <th>Mã dịch vụ</th>
                                                        <th>Tên dịch vụ</th>
                                                        <th>Lượt mua</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Larry</td>
                                                        <td>the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="section">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-block">
                                        <div class="card-title-block">
                                            <h3 class="title"> dịch vụ ít được sử dụng </h3>
                                        </div>
                                        <section class="example">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>STT</th>
                                                        <th>Mã dịch vụ</th>
                                                        <th>Tên dịch vụ</th>
                                                        <th>Số lượng</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Larry</td>
                                                        <td>the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </section>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-block">
                                        <div class="card-title-block">
                                            <h3 class="title"> Người dùng có lượt sử dụng dịch vụ nhiều nhất </h3>
                                        </div>
                                        <section class="example">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>STT</th>
                                                        <th>Mã dịch vụ</th>
                                                        <th>Tên dịch vụ</th>
                                                        <th>Số lượt mua</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Larry</td>
                                                        <td>the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </article>
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
            (function(i, s, o, g, r, a, m)
            {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function()
                {
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
    </body>
</html>
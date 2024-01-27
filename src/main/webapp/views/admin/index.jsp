<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% if(session.getAttribute("account")==null){
    response.sendRedirect(request.getContextPath()+"/login");
} %>
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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/views/admin/css/vendor.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/views/admin/css/app.css">
</head>

<body>
    <div class="main-wrapper">
        <div class="app" id="app">

            <jsp:include page="./header/header.jsp"/>


            <div class="sidebar-overlay" id="sidebar-overlay"></div>
            <div class="sidebar-mobile-menu-handle" id="sidebar-mobile-menu-handle"></div>
            <div class="mobile-menu-handle"></div>
            <article class="content dashboard-page">
                <section class="section">
                    <div class="row sameheight-container">
                        <div class="col col-12 col-sm-12 col-md-6 col-xl-5 stats-col">
                            <div class="card sameheight-item stats" data-exclude="xs">
                                <div class="card-block">
                                    <div class="title-block">
                                        <h4 class="title"> Số liệu thống kê </h4>
                                    </div>
                                    <div class="row row-sm stats-container">
                                        <div class="col-12 col-sm-6 stat-col">
                                            <div class="stat-icon">
                                                <i class="fa fa-rocket"></i>
                                            </div>
                                            <div class="stat">
                                                <div class="value"> 3 </div>
                                                <div class="name"> Dịch vụ hoạt động </div>
                                            </div>
                                            <div class="progress stat-progress">
                                                <div class="progress-bar" style="width: 75%;"></div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 stat-col">
                                            <div class="stat-icon">
                                                <i class="fa fa-shopping-cart"></i>
                                            </div>
                                            <div class="stat">
                                                <div class="value"> 78464 </div>
                                                <div class="name"> dịch vụ đã bán</div>
                                            </div>
                                            <div class="progress stat-progress">
                                                <div class="progress-bar" style="width: 25%;"></div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6  stat-col">
                                            <div class="stat-icon">
                                                <i class="fa fa-line-chart"></i>
                                            </div>
                                            <div class="stat">
                                                <div class="value"> $80.560 </div>
                                                <div class="name"> Doanh thu tháng này</div>
                                            </div>
                                            <div class="progress stat-progress">
                                                <div class="progress-bar" style="width: 60%;"></div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6  stat-col">
                                            <div class="stat-icon">
                                                <i class="fa fa-users"></i>
                                            </div>
                                            <div class="stat">
                                                <div class="value"> 359 </div>
                                                <div class="name"> Tài khoản người dùng </div>
                                            </div>
                                            <div class="progress stat-progress">
                                                <div class="progress-bar" style="width: 34%;"></div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6  stat-col">
                                            <div class="stat-icon">
                                                <i class="fa fa-list-alt"></i>
                                            </div>
                                            <div class="stat">
                                                <div class="value"> 20 </div>
                                                <div class="name"> Bài báo tin tức </div>
                                            </div>
                                            <div class="progress stat-progress">
                                                <div class="progress-bar" style="width: 49%;"></div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 stat-col">
                                            <div class="stat-icon">
                                                <i class="fa fa-dollar"></i>
                                            </div>
                                            <div class="stat">
                                                <div class="value"> $780.064 </div>
                                                <div class="name"> Tổng doanh thu </div>
                                            </div>
                                            <div class="progress stat-progress">
                                                <div class="progress-bar" style="width: 15%;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-12 col-sm-12 col-md-6 col-xl-7 history-col">
                            <div class="card sameheight-item" data-exclude="xs" id="dashboard-history">
                                <div class="card-header card-header-sm bordered">
                                    <div class="header-block">
                                        <h3 class="title">Lịch sử ghé thăm</h3>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active fade show" id="visits">
                                            <p class="title-description"> Trung bình số người dùng ghé thăm trang web trong vòng 30 ngày </p>
                                            <div id="dashboard-visits-chart"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="section">
                    <div class="row sameheight-container">
                        <div class="col-xl-8">
                            <div class="card sameheight-item items" data-exclude="xs,sm,lg">
                                <div class="card-header bordered">
                                    <div class="header-block">
                                        <h3 class="title"> Dịch vụ bán chạy </h3>
                                        <a href="add-item.jsp" class="btn btn-primary btn-sm"> Thêm dịch vụ</a>
                                    </div>
                                    <div class="header-block pull-right">
                                        <label class="search">
                                            <input class="search-input" placeholder="Tìm...">
                                            <i class="fa fa-search search-icon"></i>
                                        </label>

                                    </div>
                                </div>
                                <ul class="item-list striped" id="items">
                                    <li class="item item-list-header">
                                        <div class="item-row">
                                            <div class="item-col item-col-header fixed item-col-img xs"></div>
                                            <div class="item-col item-col-header item-col-title">
                                                <div>
                                                    <span>Tên</span>
                                                </div>
                                            </div>
                                            <div class="item-col item-col-header item-col-sales">
                                                <div>
                                                    <span>Đã bán</span>
                                                </div>
                                            </div>

                                            <div class="item-col item-col-header item-col-date">
                                                <div>
                                                    <span>Ngày thêm</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-4">
                            <div class="card sameheight-item sales-breakdown" data-exclude="xs,sm,lg">
                                <div class="card-header">
                                    <div class="header-block">
                                        <h3 class="title">Phương thức thanh toán</h3>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <div class="dashboard-sales-breakdown-chart" id="dashboard-sales-breakdown-chart">
                                    </div>
                                </div>
                            </div>
                        </div>
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
    <script src="<%= request.getContextPath() %>/views/admin/js/jquery-3.6.1.min.js"></script>
    <script src="<%= request.getContextPath() %>/views/admin/js/vendor.js"></script>
    <script src="<%= request.getContextPath() %>/views/admin/js/app.js"></script>
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
</body>

</html>
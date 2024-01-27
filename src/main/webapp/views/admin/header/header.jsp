<%@ page import="model.Account" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
                <input type="search" placeholder="Tìm...">
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
                    <ul class="notifications-container">

                    </ul>
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
                    <div class="img"
                         style="background-image: url('https://avatars3.githubusercontent.com/u/3959008?v=3&s=40')">
                    </div>
                    <span class="name"> <%= ((Account) session.getAttribute("account")).getAccountName() %> </span>
                </a>
                <div class="dropdown-menu profile-dropdown-menu" aria-labelledby="dropdownMenu1">
                    <a class="dropdown-item" href="account-info.html">
                        <i class="fa fa-user icon"></i> Tài khoản </a>
                    <a class="dropdown-item" href="#">
                        <i class="fa fa-bell icon"></i> Thông báo </a>
                    <a class="dropdown-item" href="#">
                        <i class="fa fa-gear icon"></i> Cài đặt </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/Logout">
                        <i class="fa fa-power-off icon"></i> Đăng xuất </a>
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
                                    <a href=""> Thêm dịch vụ </a>
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
                                    <a href="AddPackage"> Thêm đơn hàng </a>
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
                        <li>
                            <a href="add-store.jsp"> Thêm cửa hàng</a>
                        </li>
                    </ul>
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

    <jsp:include page="../footer/footer.jsp"/>

</aside>
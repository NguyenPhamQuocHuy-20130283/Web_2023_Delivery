<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hỗ trợ khách hàng</title>
    <!-- Add these links in the <head> section of your HTML file -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../css/faq.css">
</head>
<body>

    <jsp:include page="../header/header.jsp"/>

      <div class="main">
        <div class="landing_support">
          <div class="tittle">
            <h1>Hỗ trợ khách hàng</h1>
          </div>
        </div>

        <div class="faq">
          <div class="left">
            <div class="item1 ">
              <h3>Chủ đề</h3>
              <ul>
                <a href="customer_support.html"><li><i class="bi bi-messenger"></i> Thông tin tài khoản</li></a>
                <a href="customer_COD.jsp"><li><i class="bi bi-wallet"></i> Tiền thu hộ COD</li></a>
                <a href=""><li><i class="bi bi-telephone"></i> Trạng thái đơn hàng</li></a>
                <a href=""><li><i class="bi bi-globe2"></i> Giao hàng 1 phần</li></a>
                <a href=""><li><i class="bi bi-globe2"></i> Giao hàng 1 phần</li></a>

              </ul>
            </div>
          </div>
          <div class="right">
            <div class="search_bar">
              <input type="search" placeholder="Tìm kiếm câu hỏi">
              <button><i class="bi bi-search"></i></button>
            </div>
            <div class="main_content">
                <div class="listing-article">
                  <article class="blog-loop" style="max-width: 100%;">
                    <div class="post">
                      <div class="post-thumb"><a href=""><img src="../assets/asset 13.jpeg" alt=""></a></div>
                      <div class="post-detail">
                        <h3 class="post-title"><a href="customer_sp_detail.jsp">Làm thế nào để đăng ký tài khoản gửi hàng tại GHN?</a></h3>
                        <p class="post-content b">Để đăng ký tài khoản, Quý khách vui lòng tải app GHN Express (IOS, Android) hoặc truy cập vào website&nbsp;khachhang.ghn.vn để thao tác đăng ký tài khoản.Lưu ý: Số điện thoại và Email dùng để...</p>
                        <a href="">Xem chi tiết</a>
                      </div>
                    </div>
                  </article>
                  <article class="blog-loop" style="max-width: 100%;">
                    <div class="post">
                      <div class="post-thumb"><a href=""><img src="../assets/asset 13.jpeg" alt=""></a></div>
                      <div class="post-detail">
                        <h3 class="post-title"><a href="">Làm thế nào để đăng ký hoặc thay đổi tài khoản ngân hàng trong tài khoản GHN?</a></h3>
                        <p class="post-content b">Bước 1: Truy cập vào website khachhang.ghn.vn, nhập số điện thoại và mật khẩu bằng tài khoản Shop đã đăng ký tại GHN trước đó, nhấn nút “Đăng nhập” để hoàn tất. Bước 2: Nhấp chọn...</p>
                        <a href="">Xem chi tiết</a>
                      </div>
                    </div>
                  </article>
                  <article class="blog-loop" style="max-width: 100%;">
                    <div class="post">
                      <div class="post-thumb"><a href=""><img src="../assets/asset 13.jpeg" alt=""></a></div>
                      <div class="post-detail">
                        <h3 class="post-title"><a href="">Tôi muốn tạo yêu cầu hỗ trợ và xem lại yêu cầu hỗ trợ đã tạo?</a></h3>
                        <p class="post-content b">Tạo và quản lý yêu cầu hỗ trợ nhanh hơn và thuận tiện hơn trên app và website của GHN
                        </p>
                        <a href="">Xem chi tiết</a>
                      </div>
                    </div>
                  </article>
                  <article class="blog-loop" style="max-width: 100%;">
                    <div class="post">
                      <div class="post-thumb"><a href=""><img src="../assets/asset 13.jpeg" alt=""></a></div>
                      <div class="post-detail">
                        <h3 class="post-title"><a href="">Tôi muốn xem ID khách hàng thì làm như thế nào?</a></h3>
                        <p class="post-content b">Shop có thể chủ động xem ID khách hàng trên app và website phiên bản mới theo hướng dẫn sau:
                        </p>
                        <a href="">Xem chi tiết</a>
                      </div>
                    </div>
                  </article>
                </div>
            </div>
          </div>
        </div>
      </div>

        <jsp:include page="../footer/footer.jsp"/>

    <script src="index.js"></script>
</body>
</html>

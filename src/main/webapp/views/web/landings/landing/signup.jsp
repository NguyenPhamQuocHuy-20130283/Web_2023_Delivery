<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <!-- Add these links in the <head> section of your HTML file -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <link rel="stylesheet" href="../css/signup.css">
</head>
<body>
  <div class="navbar">
    <div class="logo">
<<<<<<<< Updated upstream:src/main/webapp/views/web/landings/landing/signup.html
      <a href="index.html"><img src="../assets/asset 0.png" alt=""></a>
========
        <a href="index.jsp"><img src="../assets/asset 0.png" alt=""></a>
>>>>>>>> Stashed changes:src/main/webapp/views/web/landings/landing/signup.jsp
    </div>
    <div class="dropdown">
      <button class="dropbtn">Dịch vụ </button>
      <div class="dropdown-content">
        <a href="#">Giao hàng nhanh </a>
        <a href="#">Kho bãi và xử lí hàng hoá</a>

      </div>
    </div>
    <div class="dropdown">
<<<<<<<< Updated upstream:src/main/webapp/views/web/landings/landing/signup.html
      <button class="dropbtn">Giới thiệu </button>
      <div class="dropdown-content">
        <a href="#">Về FedEx</a>
        <a href="#">Tin tức</a>
        <a href="#">Quan hệ với nhà đầu tư</a>
        <a href="#">Liên hệ</a>
      </div>
    </div>
    <div class="dropdown">
      <button class="dropbtn">Hỗ trợ </button>
      <div class="dropdown-content">
        <a href="customer_support.html">Câu hỏi thường gặp</a>
        <a href="customer_sp_detail.html">Hướng dẫn sử dụng</a>
        <a href="term-of-use.html">Điều khoản sử dụng</a>
        <a href="privacy-page.html">Chính sách bảo mật</a>
        <a href="">Chính sách vận chuyển</a>
      </div>
    </div>
    <div class="dropdown">
      <button class="dropbtn">Thông tin</button>
      <div class="dropdown-content">
        <a href="">Tin tức</a>
        <a href="">Bảng giá</a>
        <a href="">Khuyến mãi</a>
      </div>
    </div>

    <div class="dropdown">
      <button class="dropbtn">Đăng nhập/Đăng kí <i class="bi bi-person-circle"></i></button>
      <div class="dropdown-content">
        <a href="login.html">Đăng nhập</a>
        <a href="signup.html">Đăng kí</a>
      </div>
    </div>
    <div class="search-container">
      <input type="search" placeholder="Mã vận chuyển" id="search-input">
      <a href="order_search.html" id="search-icon">
        <i class="bi bi-search"></i>
      </a>
========
        <button class="dropbtn">Giới thiệu </button>
        <div class="dropdown-content">
            <a href="about.jsp">Về FedEx</a>
            <a href="#">Quan hệ với nhà đầu tư</a>
            <a href="#">Liên hệ</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn">Hỗ trợ </button>
        <div class="dropdown-content">
            <a href="customer_support.jsp">Câu hỏi thường gặp</a>
            <a href="customer_sp_detail.jsp">Hướng dẫn sử dụng</a>
            <a href="term-of-use.html">Điều khoản sử dụng</a>
            <a href="privacy-page.jsp">Chính sách bảo mật</a>
            <a href="not_allowed_packet.jsp">Hàng hoá không nhận vận chuyển</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn">Thông tin</button>
        <div class="dropdown-content">
            <a href="price_list.jsp">Bảng giá</a>
            <a href="">Khuyến mãi</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn">Đăng nhập/Đăng kí <i class="bi bi-person-circle"></i></button>
        <div class="dropdown-content">
            <a href="login.jsp">Đăng nhập</a>
            <a href="signup.html">Đăng kí</a>
        </div>
    </div>
    <div class="search-container">
        <input type="search" placeholder="Mã vận chuyển" id="search-input">
        <a href="order_search.jsp" id="search-icon">
            <i class="bi bi-search"></i>
        </a>
>>>>>>>> Stashed changes:src/main/webapp/views/web/landings/landing/signup.jsp
    </div>
  </div>
      <div class="login-register">
        <h1>Sign In</h1>
        <form action="#" method="post">
            <div class="form-group">
                <label for="username">Tài khoản:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Xác nhận mật khẩu:</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phone">Số điện thoại:</label>
                <input type="text" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="purpose">Mục đích sử dụng:</label>
                <select id="purpose" name="purpose" required>
                    <option value="option1">Cho cá nhân</option>
                    <option value="option2">Cho doanh nghiệp</option>

                </select>
            </div>
            <div class="form-group">
              <div class="confirm-text" style="padding: 5px 20%;">
                Bằng việc nhấn "Đăng ký", bạn đồng ý với
                Điều khoản dịch vụ và Quy định Riêng tư Cá nhân
                của chúng tôi.
              </div>
                <button type="submit">Đăng kí</button>
            </div>
        </form>
        <!-- Your social login buttons here -->
        <p>Đã có tài khoản <a href="login.jsp">Đăng nhập ngay</a></p>
    </div>
      
        <div class="Footer">
        <span class="footercopyright">© FedEx 1995-2021</span>
        <div class="innerFoot">
            <a class="footerlink" href="">Site Map <span style="padding: 0 10px;">| </span></a>
            <a class="footerlink" href="">Terms of Use <span style="padding: 0 10px;">| </span> </a>
            <a class="footerlink" href="">Privacy & Security</a>
        </div>
    </div>

    <script src="index.js"></script>
</body>
</html>

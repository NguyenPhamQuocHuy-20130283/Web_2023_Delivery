<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

 <jsp:include page="../header/header.jsp"/>

  </div>
      <div class="login-register">
        <h1>Sign In</h1>
        <form action="/Register" method="post">
            <div class="form-group">
                <label for="user">Tài khoản:</label>
                <input type="text" id="user" name="user" required>
            </div>
            <div class="form-group">
                <label for="name">Tên người dùng:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="repassword">Xác nhận mật khẩu:</label>
                <input type="password" id="repassword" name="repassword" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="phone">Số điện thoại:</label>
                <input type="text" id="phone" name="phone" required>
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

    <jsp:include page="../footer/footer.jsp"/>

    <script src="index.js"></script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập / Đăng Ký</title>
    <link rel="stylesheet" href="../css/login.css"> <!-- Sử dụng tệp CSS riêng cho trang đăng nhập -->
</head>

<body>

    <jsp:include page="../header/header.jsp"/>

    <div class="login-register">
        <h1>Đăng Nhập hoặc Đăng Ký</h1>
        <form action="/admin/index.html" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Mật Khẩu:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <button type="submit" onclick="performLogin()">Đăng Nhập</button>
            </div>
        </form>

        <div class="or-separator">
            <span>Hoặc</span>
        </div>
        <div class="social-login">
            <a href="#" class="btn btn-google">
                <i class="bi bi-google"></i> Đăng Nhập bằng Google
            </a>
            <a href="#" class="btn btn-facebook">
                <i class="bi bi-facebook"></i> Đăng Nhập bằng Facebook
            </a>
        </div>

        <p>Bạn chưa có tài khoản? <a href="signup.html">Đăng Ký</a></p>

        <p>Bạn quên email hoặc mật khẩu <a href="#">Quên mật khẩu?</a></p>
        <p>Bạn chưa có tài khoản? <a href="#">Đăng Ký</a></p>

    </div>

    <jsp:include page="../footer/footer.jsp"/>

</body>
<script>
    function performLogin() {
        // Thực hiện xử lý đăng nhập ở đây (kiểm tra email, mật khẩu, v.v.)

        // Nếu đăng nhập thành công, chuyển hướng đến trang cùng hàng với thư mục cụ
        window.location.href = '/admin/index.html';
    }
</script>
</html>

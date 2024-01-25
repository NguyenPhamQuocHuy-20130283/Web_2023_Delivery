<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="../css/forgot_password.css"> <!-- Sử dụng tệp CSS riêng cho trang quên mật khẩu -->
</head>

<body>

<jsp:include page="../header/header.jsp"/>

<div class="forgot_password" >
    <h1>Forgot password?</h1>
    <p>Enter the email address you used when you joined and we'll send you instructions to reset your password.</p>
    <label>
        Your email
        <input type="email" placeholder="Enter your email address">
    </label>
    <p>
        <button>Submit</button>
    </p>
    <a href="">Back to Sign in</a>
</div>

<jsp:include page="../footer/footer.jsp"/>

</body>

</html>
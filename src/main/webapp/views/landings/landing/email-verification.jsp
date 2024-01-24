<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Email Verification</title>
    <link rel="stylesheet" href="../css/email-verification.css"> <!-- Sử dụng tệp CSS riêng cho trang xác minh email -->
</head>

<body>

<jsp:include page="header.jsp"/>

<div class="email_verification" >
    <h1>Verify your email</h1>
    <p>We've sent a link to your email address:</p>
    <strong>mark@gmail.com</strong>
    <p>Please follow the link inside to continue.</p>
    <p>
        Didn't receive an email?
        <a href="">Resend</a>
    </p>
</div>

<jsp:include page="footer.jsp"/>

</body>

</html>
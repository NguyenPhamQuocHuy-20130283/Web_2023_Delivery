<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Email Verification</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/views/landings/css/email-verification.css"> <!-- Sử dụng tệp CSS riêng cho trang xác minh email -->
</head>
<%@ page import="java.util.*" %>
<%@ page import="model.Account" %>
<%
    // Print variables for debugging
    System.out.println("Email: " + request.getAttribute("email"));
    System.out.println("TimeUp: " + request.getAttribute("timeUp"));
    System.out.println("Error: " + request.getAttribute("error"));
    String email = (String) request.getAttribute("email");
%>
<body>

<jsp:include page="../header/header.jsp"/>

<div class="email_verification" >
    <form action="SubmitEmail" accept-charset="UTF-8" id="VerifyEmailControl" method="post">
        <input name="FormType" type="hidden" value="customer_login"
               required />
        <input name="utf8" type="hidden" value="true"
                                  required />
        <h3 class="form-heading">Xác thực Email</h3>
        <p class="form-description">Vui lòng nhập mã mà chúng tôi đã
            gửi email cho bạn.</p>
        <div class="row">
            <div class="col-md-10">
                <input type="text" value="<%= email%>" name="email"
                       id="gmailVa" readonly="readonly" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <p>Mã xác thực</p>
            </div>

            <div class="col-md-10">
                <input maxlength="8" type="text" value="" name="codeverify" />
            </div>
            <div>
                <button id="send-mail-btn" onclick="sendMail()">Gửi lại mã xác thực</button>
            </div>
            <div id="logInfoEmail"></div>
            <p style="color: red;">${sessionScope.timeUp}</p>
        </div>


        <div class="row">
            <p style="color: red;">${sessionScope.error}</p>
        </div>
        <div class="row">
            <div class="col-md-10">
                <button class="btn-cart" type="submit">Xác nhận</button>
            </div>
            <div class="col-md-10">
                <a class="btn-cart"
                   href="${pageContext.request.contextPath}/views/landings/landing/signup.jsp">Quay
                    lại trang đăng ký</a>
            </div>
        </div>
    </form>
</div>

<jsp:include page="../footer/footer.jsp"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
    function sendMail() {
        var emailvalue = document.getElementById("gmailVa").value;
        $.ajax({
            url : "${pageContext.request.contextPath}/VerifyEmailControl",
            type : "get",
            data : {
                email : emailvalue,
            },
            success : function(data) {
                $("#logInfoEmail").html(data);

            },
            error : function(data) {
            }
        });
    }
    var sendMailBtn = document.getElementById("send-mail-btn");
    var totalSeconds;

    window.onload = function() {
        // Bắt đầu đếm ngay khi trang được load
        totalSeconds = 300; // Thời gian tổng cộng là 5 phút 00 giây
        countdown(totalSeconds);
    }

    sendMailBtn.addEventListener("click", function() {
        sendMailBtn.disabled = true;
        totalSeconds = 300; // Thời gian tổng cộng là 5 phút 00 giây
        countdown(totalSeconds);
    });

    function countdown(time) {
        var minutes = Math.floor(time / 60);
        var seconds = time % 60;

        sendMailBtn.innerHTML = "Gửi lại mã xác thực " + minutes + " phút " + seconds
            + " giây";

        if (time > 0) {
            setTimeout(function() {
                countdown(time - 1);
            }, 1000);
        } else {
            sendMailBtn.innerHTML = "Send Mail";
            sendMailBtn.disabled = false;
        }
    }
</script>
</body>

</html>
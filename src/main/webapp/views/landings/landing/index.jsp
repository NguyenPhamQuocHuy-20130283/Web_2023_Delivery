<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FedEx | Tracking, Shipping, and Locations</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/views/landings/css/style.css">
</head>

<body>

    <jsp:include page="../header/header.jsp"/>

    <div class="mainimg">
        <div class="imgtxt">
            <p style="margin-top: 0%;">Vận chuyển, quản lý, theo dõi, giao hàng</p>
            <div class="dvmain">

                <div class="dv dvcenter">
                    <img class="boximg" src="<%= request.getContextPath() %>/views/landings/assets/asset 33.svg" alt=""></img>
                    <span class="boxsp" style="color: white;"> Theo dõi đơn</span>
                </div>

            </div>
            <div class="inptdiv">
                <input type="text" name="" placeholder="Mã vận chuyển" id="imginpt">
                <button id="imgbtn">Tra cứu</button>
                <!-- <div id="inptdescription">
                    <a href="#">Multiple tracking numbers <span style="margin: 0px 5px;">|</span> </a>
                    <a href="#"> need help? </a>
                </div> -->
            </div>
        </div>
    </div>
    <div class="container">
        <div id="back-to-top-button">
            <a href="#top"><i class="bi bi-arrow-up-circle-fill"></i></a>
        </div>
        <div>
            <span class="headwhite">Quản lý các lô hàng của bạn</span>
        </div>
        <div class="icondiv">
            <div>
                <img class="iconics" src="<%= request.getContextPath() %>/views/landings/assets/asset 5.png" alt="">
                <a class="icop">LÊN LỊCH NHẬN HÀNG</a>
            </div>
            <div>
                <img class="iconics" src="<%= request.getContextPath() %>/views/landings/assets/asset 6.png" alt="">
                <a class="icop">CHUYỂN HƯỚNG GÓI HÀNG CỦA BẠN</a>
            </div>
            <div>
                <img class="iconics" src="<%= request.getContextPath() %>/views/landings/assets/asset 7.svg" alt="">
                <a class="icop">TÌM ĐỊA ĐIỂM</a>
            </div>
            <div>
                <img class="iconics" src="<%= request.getContextPath() %>/views/landings/assets/travel_fee.png" alt="">
                <a class="icop">PHỤ PHÍ NHIÊN LIỆU</a>
            </div>
            <div>
                <img class="iconics" src="<%= request.getContextPath() %>/views/landings/assets/help-question.svg" alt="">
                <a class="icop">vaccine shipping</a>
            </div>
        </div>
        <div class="midimgdiv">
            <div style="margin:0 15px;">
                <a class="midi">Cho người dùng cá nhân</a>
                <img class="midics2" src="<%= request.getContextPath() %>/views/landings/assets/asset 12.jpeg" alt="">
                <h3 class="midheading2">Quản lí các đơn hàng của bạn</h3>
                <p class="midpara2">Đăng ký FedEx Delivery Manager® để biết khi nào lô hàng đang được vận chuyển và có nhiều quyền kiểm soát hơn đối với việc giao hàng của bạn.</p>
                <button class="midb">Đăng kí miễn phí</button>
            </div>
            <div style="margin:0 15px;">
                <a class="midi">Cho doanh nghiệp</a>
                <img class="midics2" src="<%= request.getContextPath() %>/views/landings/assets/asset 13.jpeg" alt="">
                <h3 class="midheading2">Chuẩn bị cho thành công</h3>
                <p class="midpara2">Sự chuẩn bị là chìa khóa để thành công. Tìm các mẹo và công cụ kinh doanh để giúp bạn đi trước một bước trước những thách thức.</p>
                <button class="midb">Nhận sự hướng dẫn</button>
            </div>
        </div>
        <div style="margin-top:50px ;">
            <span class="headwhite">Các mẹo và công cụ giúp bạn theo kịp và tiến về phía trước</span>
        </div>
        <div class="midimgdiv">
            <div style="margin:0 10px;">
                <img class="midics3" src="<%= request.getContextPath() %>/views/landings/assets/asset 14.jpeg" alt="">
                <h3 class="midheading3">Tiết kiệm chi phí vận chuyển</h3>
                <p class="midpara3">Giúp việc giao hàng của bạn được an toàn khi bạn yêu cầu chúng tôi giữ gói hàng tại một trong hàng nghìn địa điểm FedEx® gần đó. Theo dõi gói hàng của bạn để bắt đầu.</p>
                <button class="midb">Tra cứu</button>
            </div>
            <div style="margin:0 10px;">
                <img class="midics3" src="<%= request.getContextPath() %>/views/landings/assets/asset 15.jpeg" alt="">
                <h3 class="midheading3">Tiết kiệm chi phí vận chuyển</h3>
                <p class="midpara3">Tạo một tài khoản miễn phí và tận hưởng giảm giá khi vận chuyển, dễ dàng truy cập vào các địa chỉ giao hàng đã lưu, thanh toán nhanh chóng bằng cách sử dụng cài đặt hồ sơ đã lưu trữ của bạn và hơn thế nữa.</p>
                <button class="midb">Bắt đầu tiết kiệm</button>
            </div>
            <div style="margin:0 10px;">
                <img class="midics3" src="<%= request.getContextPath() %>/views/landings/assets/asset 16.jpeg" alt="">
                <h3 class="midheading3">Đóng gói để đưa đến nơi an toàn</h3>
                <p class="midpara3">Cho dù bạn cần hộp, bao bì có thể tái sử dụng, màng bọc bong bóng hay băng keo đóng gói hay bạn muốn trợ giúp đóng gói các mặt hàng dễ vỡ, chúng tôi đều sẵn sàng hỗ trợ bạn.
                </p>
                <button class="midb">Tìm nguồn cung cấp</button>
            </div>
        </div>
        <div class="joinTeamBox">
            <img class="joinTeamImg" src="<%= request.getContextPath() %>/views/landings/assets/asset 17.jpeg" alt="">
            <div class="innerTeamBox">
                <h1 class="joinTeamHead">Đồng cùng chúng tôi và tạo ảnh hưởng</h1>
                <p class="joinTeamPara">FedEx đang tuyển dụng - từ người xử lý gói hàng đến nhà phân tích dữ liệu, luôn có việc phù hợp
                    mọi người trong nhóm của chúng tôi.
                    Hãy đến tìm hiểu điều gì tiếp theo dành cho bạn.</p>
                <a class="joinTeamAnch" href="">Tìm việc</a>
            </div>
        </div>
    </div>




    <jsp:include page="../footer/footer.jsp"/>

    <script src="index.js"></script>

</body>

</html>
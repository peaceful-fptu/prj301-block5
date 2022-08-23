<%-- 
    Document   : home
    Created on : Aug 21, 2022, 9:40:23 AM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="css/styleindex.css">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Time Attendance</title>
    </head>

    <body>
        <div class="sidebar" id="home">
            <a class="active" href="#home">Home</a>
            <a href="#news">News</a>
            <a href="#contact">Contact</a>
            <a href="#about">About</a>
        </div>
        <div class="header">
            <div class="header_left">
                <p>NGÂN HÀNG TMCP CÔNG THƯƠNG THÁI NGUYÊN</p>
                <p>PHÒNG: BÁN LẺ</p>
            </div>
            <div class="header_logo">
                <img src="images/logo-vietinbank.png">
            </div>
            <!-- <div class="header_right">
                <p>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</p>
                <p class="header_right_v">Độc lập - Tự do - Hạnh phúc</p>
            </div> -->
        </div>
        <div class="nav_bar">
            <a onclick="home()"><img src="images/home-icon-png-7.jpg"></a>
        </div>
        <script>
            function home() {
                var v = document.getElementById("home");
                if (v.style.display === "none") {
                    v.style.display = "block";
                } else {
                    v.style.display = "none";
                }
            }
        </script>
        <div class="title">
            <h1>BẢNG CHẤM CÔNG ĐI CÔNG TÁC</h1>
            <h2>THÁNG 04/2022</h2>
        </div>
        <div class="data">
            <table class="table" border="1">
                <tr>
                    <th rowspan="2">STT</th>
                    <th class="name" rowspan="2">Họ tên cán bộ</th>
                    <th rowspan="2">Chức danh</th>
                    <th colspan="30">Ngày trong tháng</th>
                    <th class="sum" rowspan="2">Tổng số ngày đi công tác</th>
                    <th rowspan="2">Tổng tiền lương</th>
                </tr>
                <tr class="col-wrap">
                    <c:forEach begin="1" end="30" var="i">
                        <th>${i}</th>
                        </c:forEach>
                </tr>
                <c:forEach items="${requestScope.staffs}" var="s">
                    <tr>
                        <td>${s.id}</td>
                        <td>${s.name}</td>
                        <td>${s.regency}</td>
                        <c:forEach items="${s.timesheet.getListDay()}" var="ts">
                            <td>
                                <c:if test="${ts eq true}">
                                    X
                                </c:if>
                            </td>
                        </c:forEach>
                        <td>${s.timesheet.getWorkDays()}</td>
                        <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${s.getSalary()}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="body_note">
            Ghi chú
        </div>
        <div class="body_note_content">
            <p>Định mức công tác phí tháng: CB QHKH: 800.000đồng/tháng</p>
            <p>CB TVTC: 500.000đồng/tháng</p>
            <p>Cán bộ Nguyễn Thị Nhung thanh toán 50% định mức CTP.</p>
        </div>
        <div class="footer">
            <div class="footer_left">
                <p>Kết nối với chúng tôi</p>
                <a href="https://www.facebook.com/VietinBank/"><img src="images/Facebook_Logo_(2019).png (1).png"></a>
                <a href="https://www.youtube.com/channel/UCQUjskH3ypssYb4eJ01cCFA"><img
                        src="images/YouTube_social_red_circle_(2017).svg.png"></a>
            </div>
            <div class="footer_right">
                <p>© 2014 - Bản quyền thuộc về Ngân hàng TMCP Công Thương Việt Nam</p>
                <p>Trụ sở chính: 108 Trần Hưng Đạo, Hà Nội</p>
                <p>Điện thoại: 1900 558 868/ (84) 24 3941 8868</p>
            </div>
        </div>
    </body>
</html>

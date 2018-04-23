<%-- 
    Document   : contact
    Created on : Nov 10, 2017, 3:23:32 PM
    Author     : zeddh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layout/header.jsp"></jsp:include>
<jsp:include page="layout/menu.jsp"></jsp:include>
<title>Liên hệ</title>
<section class="page-title">
	<div class="container">
		<h3 class="text-center">Liên hệ</h3>
	</div><!-- /.container -->
</section><!-- /.page-title -->	
<section class="breadcumb">
	<div class="container">
		<ul class="list-inline text-center">
			<li><a href="index.jsp">Trang chủ</a></li>
			<li><span>Liên hệ</span></li>
		</ul><!-- /.list-inline -->
	</div><!-- /.container -->
</section><!-- /.breadcumb -->
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3723.502673270533!2d105.7364262!3d21.0525763!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345457e292d5bf%3A0x20ac91c94d74439a!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHcCBIw6AgTuG7mWk!5e0!3m2!1svi!2s!4v1511266965039" width="1368" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
<section class="contact-section sec-pad">
    <div class="container">
        <div class="col-md-4">
            <div class="title">
                <h3>Thông tin liên hệ</h3>
                <ul class="info-text">
                    <li>
                        <div class="img-box">
                            <div class="inner-box">
                                <i class="fa fa-map-marker"></i>
                            </div><!-- /.inner-box -->
                        </div><!-- /.img-box -->
                        <div class="text-box">
                            <h4>Địa chỉ</h4>
                            <p>Nhóm 11 PTPM hướng Dịch vụ <br/> 298 Cầu diễn quốc lộ 32 <br /> Minh Khai, Bắc Từ Liêm, Hà Nội</p>
                        </div><!-- /.text-box -->
                    </li>
                    <li>
                        <div class="img-box">
                            <div class="inner-box">
                                <i class="fa fa-phone"></i>
                            </div><!-- /.inner-box -->
                        </div><!-- /.img-box -->
                        <div class="text-box">
                            <h4>Số điện thoại</h4>
                            <p>(+84) 169 499 6521 <br />(+84) 166 453 8736</p>
                        </div><!-- /.text-box -->
                    </li>
                    <li>
                        <div class="img-box">
                            <div class="inner-box">
                                <i class="fa fa-envelope"></i>
                            </div><!-- /.inner-box -->
                        </div><!-- /.img-box -->
                        <div class="text-box">
                            <h4>Email</h4>
                            <p>quanlyphongtrovtc@gmail.com <br />phongtrovtc@gmail.com</p>
                        </div><!-- /.text-box -->
                    </li>
                </ul><!-- /.info-text -->
            </div><!-- /.title -->
        </div><!-- /.col-md-4 -->
        <div class="col-md-8">
            <div class="title">
                <h3>Thông điệp</h3>
            </div><!-- /.title -->
            <form action="#" class="contact-form">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" placeholder="Họ tên" />
                    </div><!-- /.col-md-6 -->
                    <div class="col-md-6">
                        <input type="text" placeholder="Email" />
                    </div><!-- /.col-md-6 -->
                    <div class="col-md-12">
                        <input type="text" placeholder="Số điện thoại" />
                    </div><!-- /.col-md-12 -->
                    <div class="col-md-12">
                        <textarea placeholder="Tin nhắn"></textarea>
                        <button class="thm-btn" type="submit">Gửi tin nhắn</button>
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </form>
        </div><!-- /.col-md-8 -->
    </div><!-- /.container -->
</section><!-- /.contact-section -->
<section class="subscribe-section">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3>Đăng ký nhận tin mới nhất</h3>
			</div><!-- /.col-md-6 -->
			<div class="col-md-6">
				<form action="#">
					<input type="text" placeholder="Email của bạn" />
					<button type="submit">Đăng ký</button>
				</form>
			</div><!-- /.col-md-6 -->
		</div><!-- /.row -->
	</div><!-- /.container -->
</section><!-- /.subscribe-section -->






<jsp:include page="layout/footer.jsp"></jsp:include> 

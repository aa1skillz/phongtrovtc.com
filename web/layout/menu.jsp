<%-- 
    Document   : menu
    Created on : Nov 9, 2017, 3:06:27 PM
    Author     : zeddh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header header-2 ">
		<nav class="navbar navbar-default header-navigation stricky">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-bar" aria-expanded="false">
						<span class="sr-only">Thanh điều hướng</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp">
                                            <img src="publics/img/logo111.png" alt="Logo" width="223" height="60"/>
					</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="main-nav-bar">
					
			
					<ul class="nav navbar-nav navbar-right right-box">
						
                                            <li><a class="thm-btn book-now-btn" href="login.jsp"><span class="fa fa-lock"></span> Đăng nhập</a></li>
					</ul>
                    <ul class="nav navbar-nav navigation-box navbar-right">
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li><a href="contact.jsp">Về chúng tôi</a></li>
                        <li>
                            <a href="allRoom.jsp">Phòng</a>
                            <ul class="sub-menu">
                                <li><a href="allRoom.jsp">Danh sách tất cả phòng</a></li>
                              
                            </ul><!-- /.sub-menu -->
                        </li>
                        <li>
                            <a href="gallery.jsp">Pages</a>
                            <ul class="sub-menu">
                                <li><a href="gallery.jsp">Thư viện ảnh</a></li>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="#">Phản hồi</a></li>
                               
                            </ul><!-- /.sub-menu -->
                        </li>
                        <li>
                            <a href="news.jsp">Tin tức</a>
                            <ul class="sub-menu">
                                <li><a href="news.jsp">Blog Details</a></li>
                            </ul><!-- /.sub-menu -->
                        </li>
                        <li><a href="contact.jsp">Liên hệ</a></li>
                        <li>
                            <a href="#"><span class="phone-only">Tìm kiếm</span><i class="fa fa-search"></i></a>
                        </li>
                    </ul>
					
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container -->
		</nav>

	</header><!-- /.header -->
<%-- 
    Document   : allRoom.jsp
    Created on : Nov 9, 2017, 9:35:04 PM
    Author     : zeddh
--%>

<%@page import="entity.Room"%>
<%@page import="java.util.List"%>
<%@page import="DAO.RoomDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<title>Tất cả phòng</title>
<jsp:include page="layout/header.jsp"></jsp:include>
<jsp:include page="layout/menu.jsp"></jsp:include>
<section class="page-title">
	<div class="container">
		<h3 class="text-center">Danh sách các phòng</h3>
	</div><!-- /.container -->
</section><!-- /.page-title -->	
<section class="breadcumb">
	<div class="container">
		<ul class="list-inline text-center">
			<li><a href="index.jsp">Trang chủ</a></li>
			<li><span>Danh sách các phòng</span></li>
		</ul><!-- /.list-inline -->
	</div><!-- /.container -->
</section><!-- /.breadcumb -->

<section class="our-rooms rooms-grid sec-pad">
    <div class="container">
        <div class="row">
            <% DAO.RoomDAO r = new RoomDAO();
            
              List<Room> lr = r.getListRooms();%>
              <% for(Room rr:lr){%>
            <div class="col-md-4">
                <div class="single-room">
                    <div class="img-box">
                        <img src="publics/img/room-9.png" alt="Awesome Image"/>
                    </div><!-- /.img-box -->
                    <div class="bottom-box clearfix">
                        <h3><%=rr.getName()%></h3>
                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div><!-- /.stars -->
                        <p> <%=rr.getAddress()%></p>
                        <a href="detailRoom.jsp?id=<%=rr.getID()%>" class="thm-btn">Chi tiết</a>
                        <div class="price-box">
                            <span class="price">Giá liên hệ</span><br />
                            <span><%=rr.getStatus()%></span>
                        </div><!-- /.price-box -->
                    </div><!-- /.bottom-box -->
                </div><!-- /.single-room -->
            </div><!-- /.col-md-4 -->
              <% } %>
        </div><!-- /.room-carousel owl-carousel owl-theme -->
    </div><!-- /.container -->    
</section><!-- /.our-room -->

<jsp:include page="layout/footer.jsp"></jsp:include>   
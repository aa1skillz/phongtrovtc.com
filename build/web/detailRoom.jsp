<%-- 
    Document   : detailRoom
    Created on : Nov 21, 2017, 8:46:06 PM
    Author     : zeddh
--%>

<%@page import="entity.Room"%>
<%@page import="DAO.RoomDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<title>Chi tiết phòng</title>
<jsp:include page="layout/header.jsp"></jsp:include>
<jsp:include page="layout/menu.jsp"></jsp:include>
<section class="page-title">
	<div class="container">
		<h3 class="text-center">Chi tiết phòng</h3>
	</div><!-- /.container -->
</section><!-- /.page-title -->	
<section class="breadcumb">
	<div class="container">
		<ul class="list-inline text-center">
			<li><a href="index.jsp">Trang chủ</a></li>
			<li><span>Chi tiết phòng</span></li>
		</ul><!-- /.list-inline -->
	</div><!-- /.container -->
</section><!-- /.breadcumb -->
<section class="our-rooms rooms-grid sec-pad">
    <div class="container">
        <div class="row">
            <% DAO.RoomDAO r = new RoomDAO();
            
              Room room=new Room();
              String id="";
              if(request.getParameter("id")!=null) {
                  id=request.getParameter("id");
                  room=RoomDAO.getRoom(Integer.parseInt(id));
              }
            
            
            %>
              

		
                     <div class="col-md-4">
                <div class="single-room">
                    <div class="img-box">
                        <img src="publics/img/room-9.png" alt="Awesome Image"/>
                    </div><!-- /.img-box -->
                    <div class="bottom-box clearfix">
                        <h3><%=room.getName()%></h3>
                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div><!-- /.stars -->
                        <p> <%=room.getAddress()%></p>
                      
                        <div class="price-box">
                            <span class="price">Giá liên hệ</span><br />
                            <span><%=room.getStatus()%></span>
                        </div><!-- /.price-box -->
                    </div><!-- /.bottom-box -->
                </div><!-- /.single-room -->
            </div><!-- /.col-md-4 -->
            
            
			<div class="col-md-8">
				<div class="room-details">
					
					<div class="details-box">
						<div class="top-box clearfix">
							<div class="title">
								<h3><%=room.getName()%></h3>
							
							</div><!-- /.title -->
							
						</div><!-- /.top-box -->
						<div class="text-box">
							
							
							<p>Hiện nay, mỗi năm có một lượng lớn sinh viên từ khắp các tỉnh thành trên cả nước lên thành phố để học tập. Chính vì vậy, nhu cầu về nhà trọ ngày càng gia tăng, có rất nhiều nhà trọ và căn hộ được xây dựng để đáp ứng nhu cầu ngày càng nhiều của các bạn sinh viên. Tuy nhiên không phải nhà trọ nào cũng phù hợp với bạn, bạn cần có những tiêu chí để đánh giá nhà trọ mình cần thuê, tránh những trường hợp vào ở rồi lại chuyển đi vừa mất thời gian vừa tốn sức.</p>
                                                           <br/>
                                                           <p>Hệ thống quản lý nhà trọ, khu trọ đơn giản, dễ sử dụng, tiết kiệm tối đa chi phí.Được ra đời dựa vào nhu cầu thực tế của các cá nhân, tổ chức cho thuê nhà, phòng trọ. Ứng dụng quản lý phòng trọ được phát triển giúp cho người quản lý tính toán chính xác tiền phòng, dịch vụ, tiết kiệm thời gian ghi chép, thống kê.</p>
                                                </div><!-- /.text-box -->
					</div><!-- /.details-box -->
		
				</div><!-- /.room-details -->
				<div class="title">
					<h3>Bình luận & Phản hồi</h3>
				</div><!-- /.title -->
				<form action="#" class="review-form">
					
					<textarea placeholder="Nội dung..."></textarea>
					<div class="row">
						<div class="col-md-6">
							<input type="text" placeholder="Họ tên" />
						</div><!-- /.col-md-6 -->
						<div class="col-md-6">
							<input type="text" placeholder="Email" />
						</div><!-- /.col-md-6 -->
					</div><!-- /.row -->
					<button type="submit" class="thm-btn">Gửi phản hồi</button>
				</form>
			</div><!-- /.col-md-8 -->
		
	
	</div><!-- /.container -->
    </div>
</section><!-- /.room-details-area -->

           
              

<jsp:include page="layout/footer.jsp"></jsp:include> 
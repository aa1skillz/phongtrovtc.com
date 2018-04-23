<%-- 
    Document   : index
    Created on : Oct 21, 2017, 8:18:07 PM
    Author     : zeddh
--%>

<%@page import="entity.Post"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tools.GetDataFromWeb"%>
<%@page import="java.util.List"%>
<%@page import="DAO.RoomDAO"%>
<%@page import="entity.Room"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layout/header.jsp"></jsp:include>
<jsp:include page="layout/menu.jsp"></jsp:include>
<jsp:include page="layout/slider.jsp"></jsp:include>
        <%
            Room r = new Room();
            RoomDAO rdao = new RoomDAO();
            List<Room> list = rdao.getListRooms();
        %>



<section class="welcome-section sec-pad">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="welcome-left">
                    <div class="sec-title">
                        <h1>welcome</h1>
                        <h2>Hệ thống quản lý phòng trọ</h2>
                    </div><!-- /.sec-title -->
                    <p>Hệ thống quản lý nhà trọ, khu trọ đơn giản, dễ sử dụng, tiết kiệm tối đa chi phí.Được ra đời dựa vào nhu cầu thực tế của các cá nhân, tổ chức cho thuê nhà, phòng trọ. Ứng dụng quản lý phòng trọ được phát triển giúp cho người quản lý tính toán chính xác tiền phòng, dịch vụ, tiết kiệm thời gian ghi chép, thống kê.</p>
                    <a href="contact.jsp" class="thm-btn">Liên hệ</a>
                </div><!-- /.welcome-left -->
            </div><!-- /.col-md-6 -->
            <div class="col-md-6">
                <img src="publics/img/welcome.png" alt="Awesome Image"/>
            </div><!-- /.col-md-6 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.about-section -->

<section class="counter-section">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="single-counter text-center">
                    <h4 class="counter">250</h4>
                    <span class="decor-line"></span>
                    <p>Khách hàng</p>
                </div><!-- /.single-counter -->
            </div><!-- /.col-md-3 -->
            <div class="col-md-3 col-sm-6">
                <div class="single-counter text-center">
                    <h4 class="counter">200</h4>
                    <span class="decor-line"></span>
                    <p>Hài lòng</p>
                </div><!-- /.single-counter -->
            </div><!-- /.col-md-3 -->
            <div class="col-md-3 col-sm-6">
                <div class="single-counter text-center">
                    <h4 class="counter">150</h4>
                    <span class="decor-line"></span>
                    <p>Kỹ thuật</p>
                </div><!-- /.single-counter -->
            </div><!-- /.col-md-3 -->
            <div class="col-md-3 col-sm-6">
                <div class="single-counter text-center">
                    <h4 class="counter">355</h4>
                    <span class="decor-line"></span>
                    <p>Dịch vụ</p>
                </div><!-- /.single-counter -->
            </div><!-- /.col-md-3 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.counter-section -->

<section class="our-rooms sec-pad">
    <div class="container">
        <div class="sec-title">
            <h1>Explore</h1>
            <h2>Danh sách phòng</h2>
            <p>Thông tin các phòng còn trống trong nhà trọ: </p>
        </div><!-- /.sec-title -->
        <div class="room-carousel owl-carousel owl-theme">
            <% for(Room x:list){%>
            <div class="item">
                <div class="single-room">
                    <div class="img-box">
                        <img src="publics/img/room-2.png" alt="Awesome Image"/>
                    </div><!-- /.img-box -->
                    <div class="bottom-box clearfix">
                        <h3><%=x.getName() %></h3>
                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div><!-- /.stars -->
                        <p><%=x.getAddress()%></p>
                        <a href="detailRoom.jsp?id=<%=x.getID() %>" class="thm-btn">Chi tiết</a>
                        <div class="price-box">
                            <span class="price"></span><br />
                            <span>Còn trống</span>
                        </div><!-- /.price-box -->
                    </div><!-- /.bottom-box -->
                </div><!-- /.single-room -->
            </div><!-- /.item -->
          <%}%>
        </div><!-- /.room-carousel owl-carousel owl-theme -->
    </div><!-- /.container -->    
</section><!-- /.our-room -->


<section class="tesimonial-section sec-pad">
    <div class="container">
        <div class="testimonial-carousel owl-carousel owl-theme">
            <div class="item">
                <div class="single-testimonial-carousel">
                    <i class="fa fa-quote-right"></i>
                    <p>Phần mềm quản lý nhà trọ giúp chị quản lý khách thuê, hợp đồng, cũng như hóa đơn hàng tháng một cách dễ dàng. Giao diện thân thiện và dễ dùng nên chị dễ dàng tiếp cận.</p>
                    <h3>Lê Thanh Trà</h3>
                    <span>Lê Thanh Trà</span>
                </div><!-- /.single-testimonial-carousel -->
            </div><!-- /.item -->
            <div class="item">
                <div class="single-testimonial-carousel">
                    <i class="fa fa-quote-right"></i>
                    <p>Giao diện đơn giản, thân thiện, thông minh giúp bạn triển khai quản lý nhà trọ thật dễ dàng và nhanh chóng.</p>
                    <h3>Nguyễn Đình Công</h3>
                    <span>Nguyễn Đình Công</span>
                </div><!-- /.single-testimonial-carousel -->
            </div><!-- /.item -->
            <div class="item">
                <div class="single-testimonial-carousel">
                    <i class="fa fa-quote-right"></i>
                    <p>Bạn có thể quản lý nhà trọ mọi lúc mọi nơi, dữ liệu được quản lý tập trung, bảo mật, và an toàn tuyệt đối.</p>
                    <h3>Thân Thế Văn</h3>
                    <span>Thân Thế Văn</span>
                </div><!-- /.single-testimonial-carousel -->
            </div><!-- /.item -->
        </div><!-- /.testimonial-carousel owl-carousel owl-theme -->
    </div><!-- /.container -->
</section><!-- /.tesimonial-section -->

<section class="our-news sec-pad">
    <div class="container">
      <div class="sec-title">
            <h1>Explore</h1>
            <h2>Tin tức</h2>
   
        </div><!-- /.sec-title -->
        <div class="room-carousel owl-carousel owl-theme">
            <% GetDataFromWeb data = new GetDataFromWeb();
            
                          List<Post> arrPost =data.getListPost();
                          for(Post p: arrPost){
            %>
            <div class="item">
                <div class="single-room">
                    <div class="img-box">
                        <a href="<%=p.getLinkPost()%>"><img src="<%=p.getImage() %>"/></a>
                    </div><!-- /.img-box -->
                    <div class="bottom-box clearfix">
                        <h3><%=p.getTitle() %></h3>
                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div><!-- /.stars -->
                        <p><%=p.getDes() %></p>
                        <a href="<%=p.getLinkPost()%>" class="thm-btn">Xem chi tiết</a>
                       
                    </div><!-- /.bottom-box -->
                </div><!-- /.single-room -->
            </div><!-- /.item -->
            
           <%}%>
        </div>
    </div><!-- /.container -->
</section><!-- /.our-news -->


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

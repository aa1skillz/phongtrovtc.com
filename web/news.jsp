<%-- 
    Document   : news
    Created on : Nov 10, 2017, 12:35:20 AM
    Author     : zeddh
--%>

<%@page import="java.util.List"%>
<%@page import="entity.Post"%>
<%@page import="tools.GetDataFromWeb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layout/header.jsp"></jsp:include>
<jsp:include page="layout/menu.jsp"></jsp:include>
<title>Tin tức</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
        <script src="https://code.jquery.com/jquery-3.2.1.js" ></script>
        <!-- JS tạo nút bấm di chuyển trang start -->
        <script src="http://1892.yn.lt/blogger/JQuery/Pagging/js/jquery.twbsPagination.js" type="text/javascript"></script>
        <!-- JS tạo nút bấm di chuyển trang end -->
        <script type="text/javascript">
            $(function () {
                var pageSize = 6; // Hiển thị 6 sản phẩm trên 1 trang
                showPage = function (page) {
                    $(".contentPage").hide();
                    $(".contentPage").each(function (n) {
                        if (n >= pageSize * (page - 1) && n < pageSize * page)
                            $(this).show();
                    });
                }
                showPage(1);
                ///** Cần truyền giá trị vào đây **///
                var totalRows = 40; // Tổng số sản phẩm hiển thị
                var btnPage = 5; // Số nút bấm hiển thị di chuyển trang
                var iTotalPages = Math.ceil(totalRows / pageSize);

                var obj = $('#pagination').twbsPagination({
                    totalPages: iTotalPages,
                    visiblePages: btnPage,
                    onPageClick: function (event, page) {
                        console.info(page);
                        showPage(page);
                    }
                });
                console.info(obj.data());
            });
        </script>
        <style>
            
            #pagination {
                display: flex;
                display: -webkit-flex; /* Safari 8 */
                flex-wrap: wrap;
                -webkit-flex-wrap: wrap; /* Safari 8 */
                justify-content: center;
                -webkit-justify-content: center;
            }
        </style>
<section class="our-rooms rooms-grid sec-pad">
    <div class="container">
        <div class="row">
                <% GetDataFromWeb data = new GetDataFromWeb();
            
                          List<Post> arrPost =data.getListPost();
                          for(Post p: arrPost){
            %>
            
            <div class="col-md-4">
                <div class="single-room">
                    <div class="img-box">
                        <a href="<%=p.getLinkPost()%>"><img src="<%=p.getImage() %>" alt="Awesome Image"/></a>
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
            </div><!-- /.col-md-4 -->
            <%}%>
        </div><!-- /.room-carousel owl-carousel owl-theme -->
        
    </div><!-- /.container -->    
</section><!-- /.our-room -->



<jsp:include page="layout/footer.jsp"></jsp:include> 


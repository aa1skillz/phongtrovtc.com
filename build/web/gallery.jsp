<%-- 
    Document   : gallery
    Created on : Nov 21, 2017, 10:59:09 PM
    Author     : zeddh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<title>Thư viện ảnh</title>
<jsp:include page="layout/header.jsp"></jsp:include>
<jsp:include page="layout/menu.jsp"></jsp:include>
<section class="page-title">
	<div class="container">
		<h3 class="text-center">Thư viện ảnh</h3>
	</div><!-- /.container -->
</section><!-- /.page-title -->	
<section class="breadcumb">
	<div class="container">
		<ul class="list-inline text-center">
			<li><a href="index.jsp">Trang chủ</a></li>
			<li><span>Thư viện ảnh</span></li>
		</ul><!-- /.list-inline -->
	</div><!-- /.container -->
</section><!-- /.breadcumb -->
<section class="gallery-section gallery-page sec-pad">
	<div class="container">
		<ul class="list-inline text-center post-filter">
			<li class="active" data-filter=".filter-item"><span>Tất cả</span></li>
			<li data-filter=".bed-room"><span>Phòng ngủ</span></li>
			<li data-filter=".drowing-room"><span>Nhà tắm</span></li>
			<li data-filter=".balcony"><span>Nhà bếp</span></li>
			<li data-filter=".guest-room"><span>Hành lang</span></li>
		</ul><!-- /.list-inline -->
		<div class="row masonary-layout filter-layout">
			<div class="col-md-4 filter-item bed-room">
				<div class="single-gallery">
		            <div class="img-box">
                                <img src="publics/img/gallery-p1.png" height="370" width="370" alt="Awesome Image"/>
		                <div class="overlay">
		                    <div class="dt">
		                        <div class="dtc">
		                            <div class="box">
                                                <a data-group="1" href="publics/img/gallery-p1.png" class="img-popup"><i class="fa fa-plus"></i></a>
		                                <h3>Photo title here</h3>
		                            </div><!-- /.box -->
		                        </div><!-- /.dtc -->
		                    </div><!-- /.dt -->
		                </div><!-- /.overlay -->
		            </div><!-- /.img-box -->
		        </div><!-- /.single-gallery -->
			</div><!-- /.col-md-4 -->
			<div class="col-md-4 filter-item balcony">
				<div class="single-gallery">
		            <div class="img-box">
                                <img src="publics/img/gallery-p2.png" alt="Awesome Image"/>
		                <div class="overlay">
		                    <div class="dt">
		                        <div class="dtc">
		                            <div class="box">
                                                <a data-group="1" href="publics/img/gallery-p2.png" class="img-popup"><i class="fa fa-plus"></i></a>
		                                <h3>Photo title here</h3>
		                            </div><!-- /.box -->
		                        </div><!-- /.dtc -->
		                    </div><!-- /.dt -->
		                </div><!-- /.overlay -->
		            </div><!-- /.img-box -->
		        </div><!-- /.single-gallery -->
			</div><!-- /.col-md-4 -->
			<div class="col-md-4 filter-item drowing-room">
				<div class="single-gallery">
		            <div class="img-box">
                                <img src="publics/img/gallery-p3.png" alt="Awesome Image"/>
		                <div class="overlay">
		                    <div class="dt">
		                        <div class="dtc">
		                            <div class="box">
                                                <a data-group="1" href="publics/img/gallery-p3.png" class="img-popup"><i class="fa fa-plus"></i></a>
		                                <h3>Photo title here</h3>
		                            </div><!-- /.box -->
		                        </div><!-- /.dtc -->
		                    </div><!-- /.dt -->
		                </div><!-- /.overlay -->
		            </div><!-- /.img-box -->
		        </div><!-- /.single-gallery -->
			</div><!-- /.col-md-4 -->
			<div class="col-md-4 filter-item guest-room">
				<div class="single-gallery">
		            <div class="img-box">
                                <img src="publics/img/gallery-p4.png" alt="Awesome Image"/>
		                <div class="overlay">
		                    <div class="dt">
		                        <div class="dtc">
		                            <div class="box">
                                                <a data-group="1" href="publics/img/gallery-p4.png" class="img-popup"><i class="fa fa-plus"></i></a>
		                                <h3>Photo title here</h3>
		                            </div><!-- /.box -->
		                        </div><!-- /.dtc -->
		                    </div><!-- /.dt -->
		                </div><!-- /.overlay -->
		            </div><!-- /.img-box -->
		        </div><!-- /.single-gallery -->
			</div><!-- /.col-md-4 -->
			<div class="col-md-4 filter-item bed-room">
				<div class="single-gallery">
		            <div class="img-box">
                                <img src="publics/img/gallery-p5.png" alt="Awesome Image"/>
		                <div class="overlay">
		                    <div class="dt">
		                        <div class="dtc">
		                            <div class="box">
                                                <a data-group="1" href="publics/img/gallery-p5.png" class="img-popup"><i class="fa fa-plus"></i></a>
		                                <h3>Photo title here</h3>
		                            </div><!-- /.box -->
		                        </div><!-- /.dtc -->
		                    </div><!-- /.dt -->
		                </div><!-- /.overlay -->
		            </div><!-- /.img-box -->
		        </div><!-- /.single-gallery -->
			</div><!-- /.col-md-4 -->
			<div class="col-md-4 filter-item guest-room">
				<div class="single-gallery">
		            <div class="img-box">
                                <img src="publics/img/gallery-p6.png" alt="Awesome Image"/>
		                <div class="overlay">
		                    <div class="dt">
		                        <div class="dtc">
		                            <div class="box">
                                                <a data-group="1" href="publics/img/gallery-p6.png" class="img-popup"><i class="fa fa-plus"></i></a>
		                                <h3>Photo title here</h3>
		                            </div><!-- /.box -->
		                        </div><!-- /.dtc -->
		                    </div><!-- /.dt -->
		                </div><!-- /.overlay -->
		            </div><!-- /.img-box -->
		        </div><!-- /.single-gallery -->
			</div><!-- /.col-md-4 -->
			<div class="col-md-4 filter-item bed-room">
				<div class="single-gallery">
		            <div class="img-box">
                                <img src="publics/img/gallery-p7.png" alt="Awesome Image"/>
		                <div class="overlay">
		                    <div class="dt">
		                        <div class="dtc">
		                            <div class="box">
                                                <a data-group="1" href="publics/img/gallery-p7.png" class="img-popup"><i class="fa fa-plus"></i></a>
		                                <h3>Photo title here</h3>
		                            </div><!-- /.box -->
		                        </div><!-- /.dtc -->
		                    </div><!-- /.dt -->
		                </div><!-- /.overlay -->
		            </div><!-- /.img-box -->
		        </div><!-- /.single-gallery -->
			</div><!-- /.col-md-4 -->
			<div class="col-md-4 filter-item guest-room">
				<div class="single-gallery">
		            <div class="img-box">
                                <img src="publics/img/gallery-p8.png" alt="Awesome Image"/>
		                <div class="overlay">
		                    <div class="dt">
		                        <div class="dtc">
		                            <div class="box">
                                                <a data-group="1" href="publics/img/gallery-p8.png" class="img-popup"><i class="fa fa-plus"></i></a>
		                                <h3>Photo title here</h3>
		                            </div><!-- /.box -->
		                        </div><!-- /.dtc -->
		                    </div><!-- /.dt -->
		                </div><!-- /.overlay -->
		            </div><!-- /.img-box -->
		        </div><!-- /.single-gallery -->
			</div><!-- /.col-md-4 -->
			<div class="col-md-4 filter-item balcony">
				<div class="single-gallery">
		            <div class="img-box">
                                <img src="publics/img/gallery-p9.png" alt="Awesome Image"/>
		                <div class="overlay">
		                    <div class="dt">
		                        <div class="dtc">
		                            <div class="box">
                                                <a data-group="1" href="publics/img/gallery-p9.png" class="img-popup"><i class="fa fa-plus"></i></a>
		                                <h3>Photo title here</h3>
		                            </div><!-- /.box -->
		                        </div><!-- /.dtc -->
		                    </div><!-- /.dt -->
		                </div><!-- /.overlay -->
		            </div><!-- /.img-box -->
		        </div><!-- /.single-gallery -->
			</div><!-- /.col-md-4 -->			
		</div><!-- /.row -->
	</div><!-- /.container -->
</section><!-- /.gallery-section -->
<jsp:include page="layout/footer.jsp"></jsp:include> 

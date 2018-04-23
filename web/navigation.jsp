<%-- 
    Document   : navigation
    Created on : Nov 4, 2017, 9:56:07 PM
    Author     : zeddh
--%>

<%@page import="entity.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <title>Quản lý hệ thống</title>
    <!--== META TAGS ==-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!--== FAV ICON ==-->
    <link rel="shortcut icon" href="images/fav.ico">

    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,600,700" rel="stylesheet">

    <!-- FONT-AWESOME ICON CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!--== ALL CSS FILES ==-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/mob.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/materialize.css" />
</head>

<body>
    <!--== MAIN CONTRAINER ==-->
    <div class="container-fluid sb1">
        <div class="row">
            <!--== LOGO ==-->
            <div class="col-md-2 col-sm-3 col-xs-6 sb1-1">
                <a href="#" class="btn-close-menu"><i class="fa fa-times" aria-hidden="true"></i></a>
                <a href="#" class="atab-menu"><i class="fa fa-bars tab-menu" aria-hidden="true"></i></a>
                <a href="index.jsp" class="logo"><img src="#" alt="" />
                </a>
            </div>
            <!--== SEARCH ==-->
            <div class="col-md-6 col-sm-6 mob-hide">
                <form class="app-search">
                    <input type="text" placeholder="Tìm kiếm" class="form-control">
                    <a href="#"><i class="fa fa-search"></i></a>
                </form>
            </div>
            <!--== NOTIFICATION ==-->
            <div class="col-md-2 tab-hide">
                <div class="top-not-cen">
                    <a class='waves-effect btn-noti' href='#'><i class="fa fa-commenting-o" aria-hidden="true"></i><span>0</span></a>
                    <a class='waves-effect btn-noti' href='#'><i class="fa fa-envelope-o" aria-hidden="true"></i><span>0</span></a>
                    <a class='waves-effect btn-noti' href='#'><i class="fa fa-tag" aria-hidden="true"></i><span>0</span></a>
                </div>
            </div>
            <!--== MY ACCCOUNT ==-->
            <div class="col-md-2 col-sm-3 col-xs-6">
                <!-- Dropdown Trigger -->
                
                

                <a class='waves-effect dropdown-button top-user-pro' href='#' data-activates='top-menu'><img src="images/user/6.png" alt="" />Tài khoản:<%session.getAttribute("email");%> <i class="fa fa-angle-down" aria-hidden="true"></i>
                </a>

                <!-- Dropdown Structure -->
                <ul id='top-menu' class='dropdown-content top-menu-sty'>
                    <li><a href="#" class="waves-effect"><i class="fa fa-cogs" aria-hidden="true"></i>Cài đặt tài khoản</a>
                    </li>
                    <li><a href="list_customer.jsp" class="waves-effect"><i class="fa fa-list-ul" aria-hidden="true"></i> Danh sách</a>
                    </li>
                    <li><a href="room.jsp" class="waves-effect"><i class="fa fa-building-o" aria-hidden="true"></i> Phòng</a>
                    </li>
               
                  
              
                    <li class="divider"></li>
                    <li><a href="logout.jsp" class="ho-dr-con-last waves-effect"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng xuất</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!--== BODY CONTNAINER ==-->
    <div class="container-fluid sb2">
        <div class="row">
            <div class="sb2-1">
                <!--== USER INFO ==-->
                
                <!--== LEFT MENU ==-->
                <div class="sb2-13">
                    <ul class="collapsible" data-collapsible="accordion">
                        <li><a href="index.jsp" class="menu-active"><i class="fa fa-bar-chart" aria-hidden="true"></i> Bảng điều khiển</a>
                        </li>
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i> Hóa đơn</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="receipts.jsp">Hóa đơn</a>
                                    </li>
                                    <li><a href="receipts.jsp">Thống kê</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </li>
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-user" aria-hidden="true"></i> Người dùng</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="user.jsp">Danh sách</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-address-book-o" aria-hidden="true"></i>Khách hàng</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="list_customer.jsp">Danh sách</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-h-square" aria-hidden="true"></i> Phòng</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="room.jsp">Danh sách</a>
                                    </li>
                                   
                                    <li><a href="type_room.jsp">Loại phòng</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </li>
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-picture-o" aria-hidden="true"></i>Hình ảnh</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="image.jsp">Slider</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </li>
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-calendar-o" aria-hidden="true"></i> Dịch vụ</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="service.jsp">Danh sách</a>
                                    </li>
                                    <li><a href="#">Thêm mới</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="logout.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng xuất</a>
                        </li>
                    </ul>
                </div>
            </div>
              <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/custom.js"></script>

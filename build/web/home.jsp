<%-- 
    Document   : index
    Created on : Nov 4, 2017, 7:01:25 PM
    Author     : zeddh
--%>

<%@page import="DAO.LoginDAO"%>
<%@page import="DAO.ServiceDAO"%>
<%@page import="DAO.RoomDAO"%>
<%@page import="DAO.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navigation.jsp" %> 
            
             <div class="sb2-2">
                <!--== breadcrumbs ==-->
                <div class="sb2-2-2">
                    <ul>
                        <li><a href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i> Trang chủ</a>
                        </li>
                        <li class="active-bre"><a href="#"> Bảng điều khiển</a>
                        </li>
                        <li class="page-back"><a href="index.jsp"><i class="fa fa-backward" aria-hidden="true"></i>Refesh</a>
                        </li>
                    </ul>
                </div>
                <!--== DASHBOARD INFO ==-->
                <div class="sb2-2-1">
                    <h2>Trung tâm điều khiển</h2>
                    <p>Số phòng,khách hàng,dịch vụ hiện có trong hệ thống:</p>
                    <% CustomerDAO cdao=new CustomerDAO();
                        RoomDAO rdao=new RoomDAO();
                        ServiceDAO sdao=new ServiceDAO();
                        LoginDAO ldao=new LoginDAO();
                    
                    %>
                    <div class="db-2">
                        <ul>
                            <li>
                                <div class="dash-book dash-b-1">
                                    <h5>Phòng</h5>
                                    <h4><%=rdao.count() %></h4>
                                    <a href="#">Xem thêm</a>
                                </div>
                            </li>
                            <li>
                                <div class="dash-book dash-b-2">
                                    <h5>Khách hàng</h5>
                                    <h4><%=cdao.count() %></h4>
                                    <a href="#">Xem thêm</a>
                                </div>
                            </li>
                            <li>
                                <div class="dash-book dash-b-3">
                                    <h5>Dịch vụ</h5>
                                    <h4><%=sdao.count() %></h4>
                                    <a href="#">Xem thêm</a>
                                </div>
                            </li>
                            <li>
                                <div class="dash-book dash-b-4">
                                    <h5>Người dùng</h5>
                                    <h4><%=ldao.count() %></h4>
                                    <a href="#">Xem thêm</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
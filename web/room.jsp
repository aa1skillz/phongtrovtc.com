<%-- 
    Document   : room
    Created on : Nov 7, 2017, 9:36:51 PM
    Author     : zeddh
--%>

<%@page import="java.util.List"%>
<%@page import="DAO.RoomDAO"%>
<%@page import="entity.Room"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navigation.jsp" %>
<!DOCTYPE html>
<div class="sb2-2">
                <div class="sb2-2-2">
                    <ul>
                        <li><a href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i>Trang chủ</a>
                        </li>
                        <li class="active-bre"><a href="room.jsp">Phòng</a>
                        </li>
                    </ul>
                </div>
 <div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>Danh sách phòng</h4>
                                    <p></p>
                                    <a class="dropdown-button drop-down-meta" href="#" data-activates="dr-users"><i class="material-icons">more_vert</i></a>
                                    <ul id="dr-users" class="dropdown-content">
                                        <li><a href="user-add.html">Add New</a>
                                        </li>
                                        <li><a href="user-edit.html">Edit</a>
                                        </li>
                                        <li><a href="#!">Update</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#!"><i class="material-icons">delete</i>Delete</a>
                                        </li>
                                        <li><a href="user-view.html"><i class="material-icons">subject</i>View All</a>
                                        </li>
                                    </ul>

                                    <!-- Dropdown Structure -->

                                </div>
<div class="tab-inn">
                                    <%
            Room r = new Room();
            RoomDAO rdao = new RoomDAO();
            List<Room> list = rdao.getListRooms();
        %>
                                    <div class="table-responsive table-desi">

                                        <table class="table table-hover" >
                                            <thead>
                                                <tr>
                                                    <th>STT</th>
                                                    <th>Loại phòng</th>
                                                    <th>Tên phòng</th>
                                                  <th>Tên phòng</th>
                                                    <th>Địa chỉ</th>
                                                    <th>Trạng thái</th>
                                                    <th>Xem</th>
                                                    <th>Sửa</th>
                                                    <th>Xóa</th>
                                                </tr>
                                                <%
                for (Room room : list) {
            %>
                                            </thead>
                                            <tbody>       
                                                <tr>
                                                    <td>
                                                       <%=room.getID()%>
                                                    </td>
                                                    <td>
                                                        <%=room.getIdTypeRoom()%>                                    
                                                    </td>
                                                    <td>
                                                        <%=room.getCode()%>
                                                    </td>
                                                    <td>
                                                        <%=room.getName()%>
                                                    </td>
                                                    <td>
                                                        <%=room.getAddress()%>
                                                    </td>
                                                    <td>
                                                        <%=room.getStatus()%>
                                                    </td>
                                                    <td>
                                                        <a href="user-view.html"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                                    </td>
                                                    <td>
                                                        <a href="CustomerController?action=edit&customerID="><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                                    </td>
                                                    <td>
                                                        <a href="CustomerController?action=delete&customerID=" onclick="return confirm('Are you sure')"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                    </td>
                                                </tr>
                                                <%
                }

            %>


                                       

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
 </div>
</div>
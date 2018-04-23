<%-- 
    Document   : list_customer
    Created on : Nov 5, 2017, 12:19:22 AM
    Author     : zeddh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="DAO.CustomerDAO"%>
<%@page import="entity.Customer"%>
<%@page import="entity.Room"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="navigation.jsp" %>

<div class="sb2-2">
                <div class="sb2-2-2">
                    <ul>
                        <li><a href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i>Trang chủ</a>
                        </li>
                        <li class="active-bre"><a href="list_customer.jsp">Khách hàng</a>
                        </li>
                    </ul>
                </div>
 <div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>Danh sách khách hàng</h4>
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

                                    <div class="table-responsive table-desi">
                                           <%
            Customer r = new Customer();
            CustomerDAO cdao = new CustomerDAO();
            List<Customer> list = cdao.getListCustomer();
        %>
                                        <table class="table table-hover" >
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Họ tên</th>
                                                    <th>Ngày sinh</th>
                                                    <th>Giới tính</th>
                                                    <th>SDT</th>
                                                    <th>Địa chỉ</th>
                                                    <th>View</th>
                                                    <th>Sửa</th>
                                                    <th>Xóa</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                               <%
                for (Customer customer : list) {
            %>
                                                <tr>
                                                    <td>
                                                        <%=customer.getID()%>
                                                    </td>
                                                    <td>
                                                        <%=customer.getFullName()%>
                                                    </td>
                                                    <td><%=customer.getBirthDay()%></td>
                                                    <td><%=customer.getSex()%></td>
                                                    <td><%=customer.getPhone()%></td>
                                                    <td>
                                                        <%=customer.getAddress()%>
                                                    </td>
                                                    <td>
                                                        <a href="user-view.html"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                                    </td>
                                                    <td>
                                                        <a href="CustomerController?action=edit&customerID=<%=customer.getID()%>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                                    </td>
                                                    <td>
                                                        <a href="CustomerController?action=delete&customerID=<%=customer.getID()%>" onclick="return confirm('Bạn có chắc chắn muốn xóa?')"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                    </td>
                                                </tr>
                                                <% } %>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
 </div>
</div>
    
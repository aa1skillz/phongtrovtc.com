<%-- 
    Document   : customer
    Created on : Nov 5, 2017, 2:49:03 AM
    Author     : zeddh
--%>

<%@page import="entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navigation.jsp" %>
<div class="sb2-2">
    <div class="sb2-2-2">
        <ul>
            <li><a href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i>Trang chủ</a>
            </li>
            <li class="active-bre"><a href="customer.jsp"> Cập nhật khách hàng</a>
            </li>
        </ul>
    </div>
    <div class="sb2-2-4">
        <div class="row">
            <div class="col-md-12">
                <div class="box-inn-sp">
                    <div class="inn-title">
                        <h4>Cập nhật khách hàng</h4>

                    </div>
                    <div class="tab-inn">
                        <form method="POST" action="CustomerController">
                            <input type="hidden" name="action" value="edit" /> 
                            <%
                                Customer customer = (Customer) request.getAttribute("customerID");
                            %>
                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="fullname" type="text" value=" <%=customer.getFullName()%>" class="validate">
                                    <label for="fullname">Họ tên</label>
                                </div>


                            </div>
                            <div class="row">
                                <div class="input-field col s6 ">
                                    <input id="birthday" type="text" value="<%=customer.getBirthDay()%>" class="datepicker">
                                    <label for="birthday">Ngày sinh</label>




                                </div>

                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="sex" type="text" value="<%=customer.getSex()%>" class="validate">
                                    <label for="sex">Giới tính</label>
                                </div>

                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="phone" type="text" value="<%=customer.getPhone()%>" class="validate">
                                    <label for="phone">SDT</label>
                                </div>

                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="address" type="text" value="<%=customer.getAddress()%>" class="validate">
                                    <label for="address">Địa chỉ</label>
                                </div>
                                <div class="row">
                                    <div class="input-field col s6">
                                        <input type="submit" class="waves-effect waves-light btn-success" value="Cập nhật">
                                    </div>
                                </div>

                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
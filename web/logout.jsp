<%-- 
    Document   : logout
    Created on : Nov 4, 2017, 10:03:48 PM
    Author     : zeddh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("email", null);
            session.invalidate();
            response.sendRedirect("login.jsp");
        %>
    </body>
</html>
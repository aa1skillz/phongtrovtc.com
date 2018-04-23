<%-- 
    Document   : login
    Created on : Nov 4, 2017, 6:34:11 PM
    Author     : zeddh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/lava-admin/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Nov 2017 06:37:37 GMT -->
<head>
    <title>Đăng nhập</title>
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
    <div class="blog-login">
        <div class="blog-login-in">
            <form action="Control" method="post">
                <img src="images/logo2.png" alt="" />
                <div class="row">
                    <div class="input-field col s12">
                        <input id="email" type="text" name="email" class="validate">
                        <label for="email">Tên đăng nhập</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="password" type="password" name="password" class="validate">
                        <label for="password">Mật khẩu</label>
                         <p style="color: red">
                                <%
                                    if (null != request.getAttribute("error")) {
                                        out.println(request.getAttribute("error"));
                                    }
                                %>
                            </p>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="hidden" value="login" name="command">
                      
                        <button type="submit" class="waves-effect waves-light btn-large btn-log-in">Đăng nhập</button>
                    </div>
                </div>
                <a href="forgot.html" class="for-pass">Quên mật khẩu?</a>
            </form>
        </div>
    </div>

    <!--======== SCRIPT FILES =========-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/custom.js"></script>
</body>


</html>

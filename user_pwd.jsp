<%--
  Created by IntelliJ IDEA.
  User: Ryan0723
  Date: 12/3/2018
  Time: 7:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="db.PoolConn" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %><%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title style="alignment: center">User Center</title>
    <style >
    </style>

    <link rel="stylesheet"
          type="text/css"
          href='https://commoncdn.entrata.com/css/less.php?template=blueline%2F&template-theme=Theme1&template-colors-new=YToxMzp7czoxMDoiYmFzZS1jb2xvciI7czo3OiIjRTZFNkU2IjtzOjEwOiJ0ZXh0LWNvbG9yIjtzOjc6IiMwMDAwMDAiO3M6MTQ6ImFjY2VudC1jb2xvci0xIjtzOjc6IiMwMTU2OTciO3M6MTQ6ImFjY2VudC1jb2xvci0yIjtzOjc6IiMzRjQ5NjMiO3M6MTQ6ImFjY2VudC1jb2xvci0zIjtzOjc6IiNFNkU2RTYiO3M6MTQ6ImFjY2VudC1jb2xvci00IjtzOjc6IiNFNkU2RTYiO3M6MTY6ImJhY2tncm91bmQtY29sb3IiO3M6NzoiI0ZGRkZGRiI7czoxMjoiaGVhZGVyLWNvbG9yIjtzOjc6IiNFNkU2RTYiO3M6MTA6ImxpbmstY29sb3IiO3M6NzoiI0U2RTZFNiI7czoyMDoicHJpbWFyeS1idXR0b24tY29sb3IiO3M6NzoiI0U2RTZFNiI7czoyMjoic2Vjb25kYXJ5LWJ1dHRvbi1jb2xvciI7czo3OiIjRTZFNkU2IjtzOjIxOiJ0ZXJ0aWFyeS1idXR0b24tY29sb3IiO3M6NzoiI0U2RTZFNiI7czoyNjoic2l0ZS1wbGFuLWFjdGl2ZS1waW4tY29sb3IiO3M6NjoiMDE1Njk3Ijt9&head-line-font=Raleway%2Csans-serif&head-line-font-weight=400&head-line-font-style=normal&body-font=Source+Sans+Pro%2Csans-serif&body-font-weight=300&body-font-style=,400&body-background-pattern=none&template_pattern_values=body-background-pattern%5Ehttps%3A%2F%2Fcommoncdn.entrata.com%2Fwebsite_templates%2F_common%2Ftemplate_patterns%2Fblueline%2Fgrainy.png%3Fver%3D1531285913&slider-opacity=0.3&is-pp-audit=0&page-type=home&application-type=prospect_portal&compiler=less-master&lkey=56363ccadfa685c588a6f57e1deb2cfb&lver=1465710455'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script>
        function check() {
            var pass1 = document.getElementById("password").value;
            var pass2 = document.getElementById("password_confirmation").value;
            if (pass1 != pass2) {
                alert("Different Password！");
                return false;
            } else
                return true;
        }
    </script>

</head>

<body>
<%
    PoolConn poolConn = PoolConn.getPoolConn();
    session = request.getSession();
    String Email = (String) session.getAttribute("Email");
    if (Email == null) {
        response.sendRedirect("user_error.html?Email=&name=&error=21");
    }

    String password = request.getParameter("password");

    if (password != null) {
        String sql = "UPDATE [UMDwell.Account_T] set userID=? where email=?";
        String[] array = {password, Email};
        int i = -1;
        try {
            i = poolConn.preparedStatement(sql, array);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (i != 1) {
            response.sendRedirect("user_error.html?Email=&name=&error=-1");
        }
    } else {
        String sql = "SELECT password FROM [UMDwell.Account_T] WHERE email=?";
        try (Connection conn = poolConn.getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setString(1, Email);
            ResultSet resultSet = statement.executeQuery();
            resultSet.next();
            password = resultSet.getString(1);
            resultSet.close();
            poolConn.returnConnection(conn);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    if (request.getParameter("password") != null) {
        String sql = "UPDATE [UMDwell.Account_T] SET password=? where email=?";
        String[] array = {request.getParameter("password"), Email};
        int i = -1;
        try {
            i = poolConn.preparedStatement(sql, array);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (i != 1) {
            response.sendRedirect("user_error.html?Email=&name=&error=-1");
        }
    }
%>

<script src="https://commoncdn.entrata.com/javascript/vendor/modernizr-2.6.2.min.js?ver=298142"></script>
<div class="main-wrapper">

    <div class="slider-container">
        <ul class="slider">
            <li class="slider-image" style="background-image:url('image/verde/verde08.jpg');">
            <li class="slider-image" style="background-image:url('image/verde/verde02.jpg');">
            <li class="slider-image" style="background-image:url('image/verde/verde03.jpg');">
            <li class="slider-image" style="background-image:url('image/verde/verde04.jpg');">
        </ul>
        <div class="slider-content">

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">

                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp" style="color:firebrick">UMDwell Home</a>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome Terps</a></li>
                    </ul>
                </div>
            </nav>


            <div class="container "  style="width: 300px; background-color: white" >
                <H2>User Email:&nbsp;&nbsp;<%=Email%></H2>
                <form method="post" action="user_center.html">
                    <fieldset id="personal_information">
                        <div class="form-group">
                            <label for="password" >Old Password:</label>
                            <input type="password" class="form-control" id="old_password" value="<%=password%>"  name="password" required>
                        </div>
                        <div class="form-group">
                            <label for="password" >New Password:</label>
                            <input type="password" class="form-control" id="new_password"
                                   placeholder="more than 8 characters"
                                   pattern="^\w{8,20}$" autocomplete="off"
                                   title="more than 8 characters" required/>
                        </div>
                        <div class="form-group">
                            <label for="password_confirmation" >New Password:</label>
                            <input type="password" class="form-control" id="cfm_password"
                                   placeholder="more than 8 characters"
                                   pattern="^\w{8,20}$" autocomplete="off"
                                   title="Please confirm your new password" required/>
                        </div>
                        <button type="submit" class="btn btn-default" value="Confirm" id="chang_passwd">Change Password</button>
                    </fieldset>
                </form>
            </div>



            <div class="container "  style="width: 300px; background-color: white" >
                <H2>Email:&nbsp;&nbsp;<%=Email%></H2>
            <form method="post" action="user_center.html">
                <ol>
                    <li>
                        <label for="password">Current Password</label>
                        <input id="old_passwrd" name="password" type="text" value="<%=password%>" required>
                    </li>
                </ol>
            </form>

            <form class="change" method="post" action="user_center.html">
                <ol>
                    <li>
                        <label for="password">New Password</label>
                        <input id="password" type="password" name="password" value="" autocomplete="off"
                               placeholder="more than 8 characters"
                               pattern="^\w{8,20}$"
                               title="more than 8 characters" required/>
                    </li>
                    <li>
                        <label for="password_confirmation">Confirm Password</label>
                        <input id="password_confirmation" type="password"
                               name="password_confirmation" value="" autocomplete="off"
                               placeholder="Please confirm your new password" required/>
                    </li>
                    <li><input id="chang_passwdS" value="Confirm" type="submit" onclick="return check()"></li>
                </ol>
            </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>

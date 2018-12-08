<%--
  Created by IntelliJ IDEA.
  User: Ryan0723
  Date: 12/3/2018
  Time: 7:55 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title style="alignment: center">Register</title>
    <style >
    </style>

    <link rel="stylesheet"
          type="text/css"
          href='https://commoncdn.entrata.com/css/less.php?template=blueline%2F&template-theme=Theme1&template-colors-new=YToxMzp7czoxMDoiYmFzZS1jb2xvciI7czo3OiIjRTZFNkU2IjtzOjEwOiJ0ZXh0LWNvbG9yIjtzOjc6IiMwMDAwMDAiO3M6MTQ6ImFjY2VudC1jb2xvci0xIjtzOjc6IiMwMTU2OTciO3M6MTQ6ImFjY2VudC1jb2xvci0yIjtzOjc6IiMzRjQ5NjMiO3M6MTQ6ImFjY2VudC1jb2xvci0zIjtzOjc6IiNFNkU2RTYiO3M6MTQ6ImFjY2VudC1jb2xvci00IjtzOjc6IiNFNkU2RTYiO3M6MTY6ImJhY2tncm91bmQtY29sb3IiO3M6NzoiI0ZGRkZGRiI7czoxMjoiaGVhZGVyLWNvbG9yIjtzOjc6IiNFNkU2RTYiO3M6MTA6ImxpbmstY29sb3IiO3M6NzoiI0U2RTZFNiI7czoyMDoicHJpbWFyeS1idXR0b24tY29sb3IiO3M6NzoiI0U2RTZFNiI7czoyMjoic2Vjb25kYXJ5LWJ1dHRvbi1jb2xvciI7czo3OiIjRTZFNkU2IjtzOjIxOiJ0ZXJ0aWFyeS1idXR0b24tY29sb3IiO3M6NzoiI0U2RTZFNiI7czoyNjoic2l0ZS1wbGFuLWFjdGl2ZS1waW4tY29sb3IiO3M6NjoiMDE1Njk3Ijt9&head-line-font=Raleway%2Csans-serif&head-line-font-weight=400&head-line-font-style=normal&body-font=Source+Sans+Pro%2Csans-serif&body-font-weight=300&body-font-style=,400&body-background-pattern=none&template_pattern_values=body-background-pattern%5Ehttps%3A%2F%2Fcommoncdn.entrata.com%2Fwebsite_templates%2F_common%2Ftemplate_patterns%2Fblueline%2Fgrainy.png%3Fver%3D1531285913&slider-opacity=0.3&is-pp-audit=0&page-type=home&application-type=prospect_portal&compiler=less-master&lkey=56363ccadfa685c588a6f57e1deb2cfb&lver=1465710455'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<script src="https://commoncdn.entrata.com/javascript/vendor/modernizr-2.6.2.min.js?ver=298142"></script>
<div class="main-wrapper">

    <div class="slider-container">
        <ul class="slider">
            <li class="slider-image" style="background-image:url('image/verde/verde03.jpg');">
            <li class="slider-image" style="background-image:url('image/verde/verde02.jpg');">
            <li class="slider-image" style="background-image:url('image/verde/verde03.jpg');">
            <li class="slider-image" style="background-image:url('image/verde/verde04.jpg');">
        </ul>
        <div class="slider-content">

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a href=index.jsp title='Home'>
                            <img src="image/logo/umd06.jpg" width="110" height="50" alt="UMDwell">
                        </a>
                    </div>
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp" style="color:firebrick">&nbsp;&nbsp;&nbsp;UMDwell Home</a>
                    </div>
                    <div class="navbar-header">
                        <a class="navbar-brand" href="floorPlan.jsp" >Floor Plan Prices</a>
                    </div>
                    <div class="navbar-header">
                        <a class="navbar-brand" href="compare.jsp" >Check Availability</a>
                    </div>
                    <div class="navbar-header">
                        <a class="navbar-brand" href="amenity.jsp" >Apartment Community Amenities</a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome Terps</a></li>
                    </ul>
                </div>
            </nav>



            <div class="container "  style="width: 300px; background-color: white" >
                <h2>Register</h2>
                <form class="login" method="post" action="/servlet/Register">
                    <fieldset id="personal_information">
                        <div class="form-group">
                            <label for="userID" >SSN/Passport No:</label>
                            <input type="userID" class="form-control" id="userID" placeholder="SSN Verification Required" name="userID" required>
                        </div>
                        <div class="form-group">
                            <label for="email" >Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password" >Password:</label>
                            <input type="password" class="form-control" id="password" placeholder="more than 8 characters" name="password" required
                                   pattern="^\w{8,20}$"
                                   title="more than 8 characters"/>
                        </div>
                        <div class="form-group">
                            <label for="password_confirmation" >Confirm Password:</label>
                            <input type="password" class="form-control" id="password_confirmation" placeholder="Please type your password again"  required
                                   pattern="^\w{8,20}$"
                                   title="more than 8 characters"/>
                        <button type="submit" class="btn btn-default" value="Register" id="submit"
                                onclick="return check()">Confirm Register</button>
                        </div>
                    </fieldset>
                </form>
            </div>
            <br>
            <br>
            <script>
                PreUrl();
                var arr=getRequest();
                document.getElementById("email").value=arr[0];
                document.getElementById("userID").value=arr[1];
                function check() {
                    var pass1 = document.getElementById("password").value;
                    var pass2 = document.getElementById("password_confirmation").value;
                    if (pass1 != pass2) {
                        alert("Different passwords!");
                        return false;
                    } else
                        return true;
                }
            </script>
            <br>
            <br>
        </div>
    </div>
</div>
</body>
</html>

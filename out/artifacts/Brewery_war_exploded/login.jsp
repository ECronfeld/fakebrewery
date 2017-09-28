<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="signup.css">
    <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
    <title>Login</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">
                <p>Home</p>
            </a>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-nav-demo" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="bs-nav-demo">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="signup.jsp">Sign Up</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="content">
    <div class="container">
        <h2>Log In With Your Username</h2>
        <p>${Errormessage}</p>
        <div class="col-lg-4 col-lg-offset-4">
            <form action="/login" method="post">
                <div class="form-group input-font">
                    <input type="email" class="form-control" id="exampleInputEmail1" name="loginname" placeholder="Enter username">
                </div>
                <div class="form-group input-font">
                    <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
                </div>
                <button type="submit" value="login" class="btn btn-default">Login</button>
            </form>
        </div>
    </div>
</div>



<script
        src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous"></script>
<script type="text/javascript" src ="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
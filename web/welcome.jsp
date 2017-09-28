<%@ page import="appLayer.User" %><%--
  Created by IntelliJ IDEA.
  User: jobbe
  Date: 23-09-2017
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="welcome.css">
    <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
    <title>Welcome!</title>
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
                <li><a href="#">Sign Up</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<%  User user = new User();
    String id = user.splitter(request.getParameter("loginname")); %>

<div class="container">
    <div class="jumbotron">
        <div class="welcome-page">
            <h1>Welcome <%= id %>!</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="thumbnail">
                <img src="./values/greg-bilsland-69480.jpg">
            </div>
        </div>
        <div class="col-lg-4">
            <div class="thumbnail">
                <img src="./values/christal-yuen-57104.jpg">
            </div>
        </div>
        <div class="col-lg-4">
            <div class="thumbnail">
                <img src="./values/jakob-owens-190798.jpg">
            </div>
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

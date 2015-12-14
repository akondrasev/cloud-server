<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="login-header">
    <div class="container">
        <div class="login-form col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h1>Sign In</h1>

                    <p class="under-heading">Don't have an account! <a href="signup.html" class="label label-default">Sign
                        Up Here</a></p>
                </div>
                <div class="panel-body">
                    <form id="login_form" class="form-horizontal" role="form">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="login-username" type="text" class="form-control" name="username" value=""
                                   placeholder="username or email">
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="login-password" type="password" class="form-control" name="password"
                                   placeholder="password">
                        </div>
                        <div class="login-btn">
                            <a href="#" class="btn btn-info btn-lg" role="button">Login</a>
                        </div>
                        <hr class="intro-divider">
                        <div class="form-group text-center">
                            <ul class="list-inline intro-social-buttons">
                                <li>
                                    <a href="#" class="btn btn-primary btn-lg" role="button"><i
                                            class="fa fa-facebook fa-fw"></i>Facebook</a>
                                </li>
                                <li>
                                    <a href="#" class="btn btn-danger btn-lg" role="button"><i
                                            class="fa fa-google fa-fw"></i>Google+</a>
                                </li>
                                <li>
                                    <a href="#" class="btn btn-success btn-lg" role="button"><i
                                            class="fa fa-credit-card fa-fw"></i> ID-card</a>
                                </li>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

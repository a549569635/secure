<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>海云天公司内部管理系统——登录</title>
    <link rel="shortcut icon" href="favico.ico" />
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/mycss.css"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="nav navbar-default navbar-static-top">
    	<div class="container">
        	<div class="navbar-header">
            	<a class="navbar-brand" href="http://dbd.ihyt.net/default.aspx">海云天</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
            	<li><a href="http://dbd.ihyt.net/Help.aspx">帮助</a></li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <div class="row">
                    <h3 class="text-center">请登录</h3>
        </div>
        <div class="row">
        <div class="jumbotron">
            <form class="form-login" runat="server">
                <div class="form-group">
                    <img class="img-circle img-responsive" style="width: 96px; height: 96px; margin: auto" src="/user_login.png"/>
                </div>
                <br/>
                <div class="form-group">
                    <asp:textbox class="form-control" placeholder="请输入账号" id="userID" type="text" runat="server" required autofocus/>
                </div>
                <div class="form-group">
             	    <asp:textbox class="form-control" placeholder="请输入密码" id="userPW" type="password" runat="server" required/>
                </div>
                <asp:checkbox runat="server" Text ="记住我"/>
                <asp:button class="btn btn-lg btn-block btn-primary" type="submit" onclick="Submit_Click" runat="server" id="submit" Text="登录"/>
                <a href="#">忘记密码?</a>
            </form>
        </div>
    </div>

    </div>
    <footer class="footer">
        <div class="container">
            <p class="footer-text">Copyright © 2015 海云天 ihyt.net All Rights Reversed.</p>
        </div>
    </footer>
</body>
</html>

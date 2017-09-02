<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>紫荆网登陆</title>

<link rel="stylesheet" href="css/stylewch.css">
</head>
<body>

<div class="login-container">
	<h1>紫荆网登陆</h1>
	
	<div class="connect">
		<p>www.zijingwang.com</p>
	</div>
	
	<form action="/zijingwang/Userlogin" method="post" id="loginForm">
		<div>
			<input type="text" name="vipUsername" class="username" placeholder="用户名"
                   autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="vipPassword" class="password" placeholder="密码"
                   oncontextmenu="return false" onpaste="return false" />
		</div>
		<!--  <a href="WEB-INF/views/wch/VipCenter.jsp">-->
            <input id="submit" type="submit" value="登 陆" />
       <!-- </a>-->
    </form>

	<a href="Userregister.jsp">
		<button type="button" class="register-tis">还有没有账号？</button>
	</a>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>


</body>
</html>
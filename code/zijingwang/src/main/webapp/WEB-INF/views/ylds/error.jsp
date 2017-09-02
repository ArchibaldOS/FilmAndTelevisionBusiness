<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<title>错误 !</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link href="/zijingwang/css0/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="/zijingwang/css0/bootstrap.css" />
<link rel="stylesheet" href="/zijingwang/css0/style2.css"
	type="text/css" media="all" />
</head>
<body>
	<div class="header">
		<div class="headertop_desc">

			<div class="zijing"></div>
			<div class="wrap">
				<div class="search bar5">
					<form action="/zijingwang/redirect" method="POST">
						<input type="text" name="name" placeholder="请输入您要搜索的内容..." /><br />
						<button type="submit"></button>
					</form>
				</div>
				<div class="account_desc">
                    <%
                        try{
                            String user = (String)session.getAttribute( "vipData" );

                            if ( user == null )
                            {
                    %>
                    <ul>
                        <li><a href="Userlogin.jsp">登陆</a></li>
                        <li><a href="Userregister.jsp">注册</a></li>
                    </ul>
                    <%
                        }
                    }catch(Exception e){
                    %>
                    <h4 style="color:#FFFFFF">	欢迎您：${ sessionScope.vipData.vipUsername}</h4>


                    <%
                            out.println( "<a href = 'Userlogin.jsp' >退出登陆</a>" );

                        }
                    %>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<h1>您输入的信息有误或者没有输入</h1>
	<h4><a href = "/zijingwang/FilmInfo">点击这里返回首页</a></h4> </br>
	<div>
		<p>可能的原因如下：</p>
		<p>1.不存在该电影</p>
		<p>2.输入的字数过长</p>
	</div>
 </body>
</html>
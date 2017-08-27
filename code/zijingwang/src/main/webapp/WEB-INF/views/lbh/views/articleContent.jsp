<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<c:set var="a" value="${requestScope.article }" />
    <title>${a.title }</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style2.css" type="text/css" media="all" />
    <link href="http://fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.title{
	border-left:4px solid red;
	width:700px; 
	height:auto !important;  
	padding-left:5px;
	margin-left:50px;
	text-align:left;
	clear: both; 
}
.content{
	text-align:left;
	width: 750px;
	height:auto;
	margin-left: 50px;
    margin-top: 20px;
	font-size:large;
}
.button {
  height:40px;
  width: 90px;
  font-size: 16px;
}
.button:HOVER{
	color: blue;
	background-color: blue;
}
 
</style>
<body>
<div class="header">
    <div class="headertop_desc">

        <div class="zijing"></div>
          <div class="wrap">
            <div class="search bar5">
                <form  action="search.html" method="post">
                    <input type="text" placeholder="请输入您要搜索的内容...">
                    <button type="submit"></button>
                </form>
            </div>
            <div class="account_desc">
                <ul>
                    <li><a href="contact.html">登陆</a></li>
                    <li><a href="contact.html">注册</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="header-bottom">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <div class="logo">
                    <h1><a class="navbar-brand" href="index.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Zi</span>Jing</a></h1>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                <nav class="cl-effect-1" id="cl-effect-1">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html" class="scroll">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
                        <li><a href="#about" class="hvr-bounce-to-bottom scroll">正在上映</a></li>
                        <li><a href="#services" class="hvr-bounce-to-bottom scroll">选座购票</a></li>
                        <li class="active"><a href="/zijingwang/article" class="hvr-bounce-to-bottom scroll">影视资讯</a></li>
                        <li><a href="#mail" class="hvr-bounce-to-bottom scroll">个人中心</a></li>
						<li><a href="/zijingwang/message" class="hvr-bounce-to-bottom scroll">用户留言</a></li>
                    </ul>
                </nav>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
    </div>
		<div>
				<div style="text-align: center;margin: 0px 240px 0px 300px; height: auto;">
					<div class="title">
						<h1><b>${a.title }</b></h1>
						<br/>
						<h4><font color="gray" style="font-style: italic;">作者：${a.author }</font></h4>
					</div>
					<div class="content">${a.articleContent }</div>
					<div class='form-actions'>
                         <button class='btn btn-primary' type='submit' onclick="javascript:history.go(-1)" style="width: 60px ">返回</button>
                    </div>
				</div>
		</div>

</div>
</body>
</html>

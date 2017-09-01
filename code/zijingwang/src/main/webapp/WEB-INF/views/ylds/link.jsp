<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link type="text/css" href="/zijingwang/css0/reset.css" />
<link href="/zijingwang/css0/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="/zijingwang/css0/bootstrap.css">
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="/zijingwang/css0/style2.css" type="text/css"
	media="all" />
<link
	href="http://fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext"
	rel="stylesheet">
<link
	href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<title>电影信息</title>
<style type="text/css">
html body {
	color: #333;
	font: 12px/150% helvetica, "微软雅黑", "microsoft  yahei", verdana, lucida,
		arial, sans-serif, "黑体";
}

h1 {
	font-size: 36px;
	color: #3F3333
}

.pos {
	display: inline-block;
}

.p1 {
	position: absolute;
	left: 530px;
}

.pos h1 a {
	font-weight: normal;
	text-decoration: none;
}

.pos h1 p {
	font-weight: normal;
}

.size {
	width: 830px;
	margin-left: 232px;
	margin-top: -40px;
}

.pos a {
	text-decoration: none;
	color: #3F3333;
}

.pos a:hover {
	text-decoration: underline;
}

.f2016 {
	font-size: 30px;
	color: #3F3333;
	display: inline-block;
	position: relative;
	top: 15px;
	left: 350px;
}

.pos div p {
	font-size: 25px;
	display: block;
	position: relative;
	top: -40px;
}

.p2 {
	color: #FFF !important;
	background-color: #444444;
	font-size: 16px;
	line-height: 26px;
	position: relative;
	top: -25px;
}

.fc {
	color: #FFF !important;
}

.p3 {
	background-color: #127BAB;
	font-size: 14px;
}

.p3 span {
	font-size: 25px;
	font-weight: bold;
}

.p3 a {
	display: inline-block;
	height: 40px;
	line-height: 49px;
	padding-right: 15px;
	padding-left: 10px;
}

.p3 a:hover {
	background-color: #004C7F;
	text-decoration: none;
}

.bc {
	background-color: #E8E9EE;
}

.p4 {
	color: #FFF;
	background-color: #679C21;
}

.p4 p {
	display: inline-block;
}

.y {
	font-size: 22px;
	color: red
}
</style>
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
						<h1>
							<a class="navbar-brand" href="index.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Zi</span>Jing
							</a>
						</h1>
					</div>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil"
					id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-1" id="cl-effect-1">
						<ul class="nav navbar-nav">
                            <li class="active"><a href="/zijingwang/" class="scroll">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
                            <li><a href="/zijingwang/hotmovie" >正在上映</a></li>
                            <li><a href="#services" class="hvr-bounce-to-bottom scroll">选座购票</a></li>
                            <li><a href="/zijingwang/article" >影视资讯</a></li>
                            <li><a href="#mail" class="hvr-bounce-to-bottom scroll">个人中心</a></li>
                            <li><a href="/zijingwang/message" >用户留言</a></li>
						</ul>
					</nav>
				</div>

				<img src="/zijingwang/image/logo.png" />
				<div class="size">
					<div class="pos">
						<img src="/zijingwang/image/${pic}" />
					</div>
					<div class="pos p1">
						<c:if test="${infos ne null }">
							<c:forEach items="${infos }" var="i">
								<div>
									<h1>${i.name }</h1>
									<div class="f2016">
										<p>2017</p>
									</div>

								</div>
								<div class="p2">${i.filmtime}
									- <a href="" class="fc">${i.filmtype}</a> - ${i.releasedate}
									${i.country}
								</div>
								<div class="y">
									<strong>票价:￥${i.price}</strong>
								</div>
								<div class="p3">
									<a href="" class="fc">点击购票</a><a
										href="/zijingwang/review/${i.name}" class="fc">查看影评</a>
								</div>
								<h style="font-size:16px">
								<stong>电影详情</stong></h>
								<p style="color: #5C3317">${i.description}</p>
					</div>

					<div class="bc">
						<div>
							<div class="p4">
								<p>豆瓣评分</p>
								<p>${i.score }</p>
								<span>总分：10</span>
							</div>
						</div>
						<div></div>
					</div>
					</c:forEach>
					</c:if>
				</div>
</html>
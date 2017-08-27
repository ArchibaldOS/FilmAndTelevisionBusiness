<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>紫荆网</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style2.css" type="text/css" media="all" />
<link
	href="http://fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext"
	rel="stylesheet">
<link
	href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
#page {
	margin-top: 10px;
}

#page a {
	border: 1px solid #000;
	display: inline-block;
	padding: 2px 5px;
	margin: 0 5px;
	text-decoration: none;
}
</style>
</head>
<body>

	<div class="header">
		<div class="headertop_desc">

			<div class="zijing"></div>
			<div class="wrap">
				<div class="search bar5">
					<form action="search.html" method="post">
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
			<nav class="navbar navbar-default"> <!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<div class="logo">
					<h1>
						<a class="navbar-brand" href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Zi</span>Jing
						</a>
					</h1>
				</div>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse nav-wil"
				id="bs-example-navbar-collapse-1">
				<nav class="cl-effect-1" id="cl-effect-1">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp" class="scroll">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
					<li><a href="#about" class="hvr-bounce-to-bottom scroll">正在上映</a></li>
					<li><a href="#services" class="hvr-bounce-to-bottom scroll">选座购票</a></li>
					<li><a href="/zijingwang/article" class="hvr-bounce-to-bottom scroll">影视资讯</a></li>
                        <li><a href="#mail" class="hvr-bounce-to-bottom scroll">个人中心</a></li>
						<li class="active"><a href="/zijingwang/message" class="hvr-bounce-to-bottom scroll">用户留言</a></li>
				</ul>
				</nav>
			</div>
			<!-- /.navbar-collapse --> </nav>
		</div>
		<div
			style="margin: 0px 100px; height: 510px;">
			<div style="float: left;">
				<form action="/zijingwang/message" method="post"
					style="margin: 10px 200px 20px 300px;">
					<div>
						<h1>在线留言</h1>
						<br />
						<h5>有问题请在此留言，我们的客服人员将会尽快为您解答</h5>
						<br />
					</div>
					<div>
						<textarea rows="10" cols="50" name="messageContent"></textarea>
					</div>
					<br />
					<div id="wrapper">
						<input type="submit" value="提交问题" class="btn btn-default"
							style="width: 100px; color: white; background-color: blue" /> <input
							type="reset" value="重置" class="btn btn-default"
							style="width: 100px; color: blue;" />
					</div>
				</form>
			</div>

			<div style="float: left;">
				<div>
					<br />
					<h3>留言列表</h3>
					<br />
					<table cellspacing="50px">
						<tbody>

						</tbody>
					</table>
				</div>
				<div id="page"></div>
			</div>
		</div>

	</div>
	<script type="text/javascript">
	
			function load(cur){
			
				$.get('/zijingwang/listMessage2',	{'cur':cur}, function(page){
					
					var tbody = $('table>tbody').empty();
					var p = $('#page').empty();
					if( page && page.list ){
						
						for(var i = 0; i < page.list.length; i++){
							var temp = page.list[i];
							var datetime = new Date(temp.messageTime);
							if(temp.replyMessage == null) temp.replyMessage = "";
							var tr = '<tr>\
										<td><div style="float:left">' + temp.userId  + '</div>\
										<div style="float:right">'+ datetime.toLocaleString() + '</div>\
										<br/>&nbsp;&nbsp;&nbsp;&nbsp;<span><b>' + temp.messageContent+'</b></span>\
										<br/><font color="gray">回复:</font>&nbsp;<font color="red">' + temp.replyMessage +'</font>\
										<br/><br/></td>\
									</tr>';
							tbody.append( $(tr)  );
						}
						for(var i = 1; i <= page.total; i++){
							
							var a =$( '<a></a>' ).html(i);
							if( i == page.current ){
								a.attr('href', '-1').css('color','#ccc');
							} else {
								a.attr('href', i);
							}
							
							a.click(function( e ){
								e.preventDefault();
								
								var _a = $( this );
								var _cur = _a.attr('href');
								if( _cur >= 1 ){
									load(_cur);
								}
								
							});
							
							p.append( a );
						}
					}else{
						tbody.append("查无数据");
					}	
				}, 'json');
			}
		
			load(1);
		</script>
<%
	 if(request.getAttribute("isSucceed") != null){
     	int flag = (int)request.getAttribute("isSucceed");
	 	if(flag == 1){
		 	out.println("<script type=\"text/javascript\">alert('留言成功!')</script>");
		}else{
			Object set =request.getAttribute("set");
			out.println("<script type=\"text/javascript\">alert('"+ "请不要使用"+ set.toString() +"等敏感词！')</script>");
		}

	 }else{}
%>
</body>
</html>

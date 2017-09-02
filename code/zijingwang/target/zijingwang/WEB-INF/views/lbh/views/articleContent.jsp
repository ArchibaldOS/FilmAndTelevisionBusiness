<%@ page import="org.springframework.web.context.request.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.xd.zijing.entity.Article" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<c:set var="a" value="${requestScope.article }" />
	<c:set var="p" value="${requestScope.page }" />
    <title>${a.title }</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css0/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="css0/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css0/style2.css" type="text/css" media="all" />
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
#btn1{
	float:left;
	margin-left:250px; 	

	width: 70px;
	height: 60px;

}
#btn2{
	float:left;
	width: 130px;
	height: 60px;
}
#page {
	padding:10px 0px;
	margin-left:50px;
	margin-right:50px;
	background-color: white;
}

#page a {
	border: 1px solid #000;
	display: inline-block;
	padding: 2px 5px;
	margin: 0 5px;
	text-decoration: none;
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
                        <li><a href="/zijingwang" class="scroll">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
                        <li><a href="/zijingwang/hotmovie" class="hvr-bounce-to-bottom scroll">正在上映</a></li>
                        <li><a href="#services" class="hvr-bounce-to-bottom scroll">选座购票</a></li>
                        <li class="active"><a href="/zijingwang/article" class="hvr-bounce-to-bottom scroll">影视资讯</a></li>
                        <li><a href="/zijingwang/wchUserlogin" >个人中心</a></li>
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
					<div style="width: 100%;height:40px;"></div>
					<div style="height: 80px;">
						<div id='btn1'>
                         	<button  class='btn btn-primary' type='submit' onclick="javascript:history.go(-1)" style="width: 60px">返回</button>
                    	</div>
                    	<div id="btn2">
                    		<button id='btn22' class='btn btn-primary' type='submit' onclick="(commentArea.style.display=='none')?commentArea.style.display='':commentArea.style.display='none'" style="width: 120px ">发表评论</button>
						</div>
					</div>
					<div id="commentArea" style="display: none;">
					<div style="float: left;width: 100%;">
						<form action="/zijingwang/articleComment" method="post"
							style="margin: 0px 100px 20px 240px;" onsubmit="return check()">
							<div style="float: left;">
								<h4>在线评论</h4>
								<br />
							</div>
							<div>
								<input name="articleId" type="hidden" value="${a.articleId }" />
								<textarea id="content" rows="5" cols="50" name="commentContent"></textarea>
								<span id="msg"></span>
							</div>
							<br />
							<div id="wrapper">
								<input type="submit" value="提交评论" class="btn btn-default"
									style="width: 100px; color: white; background-color: blue" />
								<input type="reset" value="重置" class="btn btn-default"
									style="width: 100px; color: blue;" />
							</div>
						</form>
					</div>



				</div>
					<div style="width:100%;height:auto;clear: both;background-color: gray;">
						<div style="margin-right: 50px;margin-left: 50px;">
							<br />
							<h3>评论列表</h3>
							<br />
							<table style="margin-right: 50px;width: 100%;">
								<tbody>
								<c:choose>
									<c:when test="${p ne null and p.list ne null and not empty p.list}">
										<c:forEach items="${p.list }" var="s">
											<tr style="background-color:white; ">
												<td style="border: gray solid 1px;">
													<div style="float:left">${s.userId }</div>
													<div style="float:right;margin-right:20px;">${s.commentTime }</div>
													<br/><br/><div style="text-align: left"><strong>${s.commentContent }</strong></div>			
													<br/>
												</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="1">查无数据</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
							</table>
						</div>
						<c:if test="${not empty p.list }">
						<div id="page">
							<c:if test="${p.current gt 1 }">
								<a href="/zijingwang/articleContent?articleId=${a.articleId }&&cur=${p.current-1 }">上一页</a>
							</c:if>
							<c:forEach begin="1" end="${p.total }" var="cur">
								<a href="/zijingwang/articleContent?articleId=${a.articleId }&&cur=${cur }">${cur }</a>
							</c:forEach>
							<c:if test="${p.current lt p.total }">
								<a href="/zijingwang/articleContent?articleId=${a.articleId }&&cur=${p.current+1 }">下一页</a>
							</c:if>
						</div>
						</c:if>
						<div style="height: 20px;background-color: gray;"></div>
					</div>
			</div>
		</div>
</div>
<div style="width: 100%;height:150px;"></div>
</body>
<script type="text/javascript">
	
	var content = document.getElementById("content");
	var msg = document.getElementById("msg");
	content.onblur = function(e) {
		if (content.value == "") {
			this.style.borderColor = "red";
			msg.style.color = "red";
			msg.innerHTML = "内容不能为空！";
		} else {
			this.style.borderColor = "green";
			msg.innerHTML = "";
		}
	}
	function check() {
		if (content.value == "") {
			alert("留言内容不能为空！");
			return false;
		}
	}
</script>
<%
	 if(request.getAttribute("isSucceed") != null){
     	int flag = (int)request.getAttribute("isSucceed");
	 	if(flag == 1){
		 	out.println("<script type=\"text/javascript\">alert('评论成功!')</script>");
		}else{
			Object set =request.getAttribute("set");
			out.println("<script type=\"text/javascript\">alert('"+ "请不要使用"+ set.toString() +"等敏感词！')</script>");
		}

	 }
%> 
</html>

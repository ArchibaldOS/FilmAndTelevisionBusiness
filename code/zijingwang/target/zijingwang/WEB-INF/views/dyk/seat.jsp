<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html lang="en">
<head>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="/static/title.ico">
<link href="css/style3.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style4.css" type="text/css" media="all" />
<link href="http://fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">


<title>糯米电影</title>


<link rel="stylesheet" href="css/pkg/lib.css" /><link rel="stylesheet" href="css/pkg/ui.css" /><link rel="stylesheet" href="css/pkg/dialog.css" /><link rel="stylesheet" href="css/pkg/movie1.css" /><link rel="stylesheet" href="css/pkg/rank.css" />




<link rel="stylesheet" type="text/css" href="css/topbar.css">
<link rel="stylesheet" type="text/css" href="css/seatpick.css">
<link href="css0/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- Bootstrap-Core-CSS -->





</head>
<body>
	<div class="header">
    <div class="headertop_desc">

        <div class="zijing"></div>
          <div class="wrap">
            <div class="search bar5">
                <form>
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
                    <h1><a class="navbar-brand" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Zi</span>Jing</a></h1>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <!-- /.navbar-collapse -->
        </nav>
    </div>
	
</div>
	<div class="wrap">
		
		<div class="bodywrap">
<div class="bodytop">
			
		</div>
			<div class="bodymain">
				<div class="lside fl">
					<div class="lsid">
						<div class="lcinema">成都华帝影城（郫县店）</div>
						<p>（剩余99个座位）</p>
						<form name="seat" action="login1">
							<ul id="seats">
								<li><c:forEach items="${seatings}" var="s">
										<a href="${s.seatId }" class="${s.seatValue }"></a>
									</c:forEach></li>
							</ul>
						</form>
						<div class="descrip">
							<i class="des-1"></i><span>可选座位</span> <i class="des-3"></i><span>不可选座位</span>
						</div>
					</div>
				</div>
				<div class="rside fr">
					<h1>电影票</h1>
					<div class="fiseinfo">
						<div class="subtitle">
							<a href=""><img src="img/a0.jpg"></a>
							<div class="filmn fl">
								<strong class="filmname">《战狼2》</strong><br /> <span>类型：动作/剧情/战争</span>
							</div>
						</div>
						<p>
							影院：<strong> 华帝影城）</strong>
						</p>

						<p>
							场次：<strong> 8月8日&nbsp; <span id="ontime">19:50</span></strong><span
								class="changetime">&nbsp;&nbsp;更换<i class="changese"></i></span>
						</p>
						<!--<p class="fi-se"><span class="fi-seat">座位： </span><span id="seatsd"></span> </p>-->
						<p>
							票价：<strong> 288元/张</strong>
						</p>
						<p>
							票数： <strong> <span id="poll">0</span></strong>
						</p>
					</div>
					<div class="total">

						<form id="myForm" action="login1" method="post">
							<p class="fi-se">
								<span class="fi-seat">座位： </span><span id="seatsd"></span>
							</p>
							<input type="hidden" name="cinema" value="${param.cinema}">
							<input type="hidden" name="filmHall" value="${param.filmHall}">
							<input type="hidden" name="filmName" value="${param.filmName}">
							<input type="hidden" name="filmTime" value="${param.filmTime}">
                            <input type="hidden" name="account" value="${ sessionScope.vipData.vipUsername}">
							<input type="submit" value="确认提交" align=＂right＂
								style="width: 100px; height: 40px;" />
							<div class="notice">
								<strong>温馨提示：</strong>
								<p>本场座位图及票务信息由成都太平洋影城提供；</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
</div>
		<script type="text/javascript" src="jQuery-1.7/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="js/topbar.js"></script>
		<script type="text/javascript" src="js/seatpick.js?v=1.2"></script>
</body>
</html>

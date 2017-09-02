<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <link href="/zijingwang/css0/style.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link rel="stylesheet" href="/zijingwang/css0/bootstrap.css"/>
    <link rel="stylesheet" href="/zijingwang/css0/style2.css"
          type="text/css" media="all"/>

    <style type="text/css">
        .agile-info-wthree-box {
            margin-right: 80%
        }

        .y1 {
            border: 2px;
            color: #5C3317;
            width: 500px;
            height: 120px;
        }

        .y2 {
            margin-left: 50% width : 50 px;
            height: 25px;
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
                    <input type="text" name="name" placeholder="请输入您要搜索的内容..."/><br/>
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
                        <li ><a href="/zijingwang/" class="scroll">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
                        <li><a href="/zijingwang/hotmovie">正在上映</a></li>
                        <li><a href="#services" class="hvr-bounce-to-bottom scroll">选座购票</a></li>
                        <li class="active"><a href="/zijingwang/article">影视资讯</a></li>
                        <li><a href="/zijingwang/wchUserlogin" >个人中心</a></li>
                        <li><a href="/zijingwang/message">用户留言</a></li>
                    </ul>
                </nav>
            </div>
            <div class="grid_3 grid_5 w3ls">
                <h3 style="font-size: 20px">
                    <strong>电影评价</strong>
                </h3>

                <div class="alert alert-success" role="alert">
                    <c:if test="${name ne null }">
                        <c:forEach items="${name}" var="n">
                            <strong>${n.nickname}:</strong>

                            <p>${n.review}</p>
                            </br>
                            </br>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
            <div class="clearfix"></div>

            <div class="all-comments">
                <div class="all-comments-info">
                    <p style="font-size: 20px">
                        <strong>发表影评</strong>
                    </p>

                    <div class="agile-info-wthree-box">
                        <form action="/zijingwang/insert" method="POST">
                            <input type="text" name="nickname" placeholder="您的昵称"> <input
                                type="text" name="name" placeholder="电影名称"> <input
                                class="y1" type="text" placeholder="您可以输入0-255个字数之间的影评"
                                name="review"> <input class="y2" type="submit"
                                                      value="提交">

                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>
</body>
</html>
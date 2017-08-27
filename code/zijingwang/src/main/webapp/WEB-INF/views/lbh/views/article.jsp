<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>紫荆网</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style2.css" type="text/css" media="all" />
    <link href="http://fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
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
	font-size:20px;
}


.title a {
	text-decoration: none;
	font-size: 20px;
	color: blue;
}
.title a:HOVER {
	text-decoration: none;
	color: red;
	padding-left: 2px; 
}
.title{
	width:400px;
	height:40px;
	float: left;
	margin-left: 20px; 
	text-align: left;
}
.author{
	float:right;
	margin-right: 0px;
	margin-left: 300px;
}
.keyword{
	font-size:12px;
	float:none;
	width:400px;
	height: 30px;
	margin: 20px;
	text-align: left;
}
</style>
</head>
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
    	<div style="text-align: center;">
				<div style="text-align:center;margin: 0px 240px 0px 300px; height: 510px;">
					<br />
					<h3>文章列表</h3>
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
			
				$.get('/zijingwang/listArticle2',	{'cur':cur}, function(page){
					
					var tbody = $('table>tbody').empty();
					var p = $('#page').empty();
					if( page && page.list ){
						
						for(var i = 0; i < page.list.length; i++){
							var temp = page.list[i];
							var tr = '<tr>\
										<td><div class="title"><strong><a href="/zijingwang/articleContent?articleId='+ temp.articleId +'">' + temp.title  + '</a></strong></div>\
										<div class="author"><span style="color:gray">作者：</span><span style="color:blue">'+ temp.author + '</span></div>\
										<br/><div class="keyword">关键字：' + temp.keyword+'\
										<br/><hr /><br/><br/><br/>\
										</td>\
									</tr>';
							tbody.append( $(tr)  );
						}
						var pa = $('<a></a>').html("上一页");
						var pe = $('<a></a>').html("下一页");
						if(page.current != 1){
							pa.attr('href',page.current-1);
							p.append(pa);
							pa.click(function(e){
								e.preventDefault();
								var _a = $( this );
								var _cur = _a.attr('href');
								if( _cur >= 1 ){
									load(_cur);
								}
							});
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
							if(page.current != page.total){
								pe.attr('href',page.current+1);
								p.append(pe);
								pe.click(function(e){
									e.preventDefault();
									var _a = $( this );
									var _cur = _a.attr('href');
									if( _cur >= 1 ){
										load(_cur);
									}
								});
							}
						}
					}else{
						tbody.append("查无数据");
					}	
				}, 'json');
			}
		
			load(1);
		</script>
</body>
</html>

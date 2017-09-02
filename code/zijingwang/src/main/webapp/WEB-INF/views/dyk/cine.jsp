
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("utf-8");%>

<!doctype html>
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


<title>紫荆电影</title>


<title>
    百度电影
</title>































<link rel="stylesheet" href="css/pkg/lib.css" /><link rel="stylesheet" href="css/pkg/ui.css" /><link rel="stylesheet" href="css/pkg/dialog.css" /><link rel="stylesheet" href="css/pkg/movie1.css" /><link rel="stylesheet" href="css/pkg/rank.css" /></head>



<body >


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
                    <h1><a class="navbar-brand" href="index.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Zi</span>Jing</a></h1>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                <nav class="cl-effect-1" id="cl-effect-1">
                    <ul class="nav navbar-nav">
                        <li ><a href="/zijingwang/" class="scroll">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
                        <li><a href="/zijingwang/hotmovie">正在上映</a></li>
                        <li class="active"><a href="/zijingwang/article">影视资讯</a></li>
                        <li><a href="/zijingwang/wchUserlogin" >个人中心</a></li>
                        <li><a href="/zijingwang/message">用户留言</a></li>
                    </ul>
                </nav>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
    </div>
	
</div>

<div id="page">







<div class="main" id="main">

    <div class="content" id="content">
        


<div class="widget-movie-detail" id="widgetMovieDetail" style="background:url('https://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/738b4710b912c8fc6d09d266f6039245d78821a6.jpg') no-repeat center top;background-size:100% auto;">

    

<div class="widget-movie-detail-intro" id="detailIntro">
    <div class="container clearfix">
        <div class="fl poster">
            
            <img class="img" src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/738b4710b912c8fc6c34d366f6039245d7882151.jpg">
        </div>
        <div class="info">
            <h4 class="subtitle">战狼2</h4>

            <div class="record clearfix">
                <p class="star fl"><span class="star-in fl" style="width:96%;"></span></p>
                <span class="nuomi-orange font16 fl num">9.6</span>
            </div>
            <div class="content">
                <p class="des">犯我中华者 虽远必诛</p>
                <p>导演：吴京 &nbsp;&nbsp;&nbsp;&nbsp;主演：吴京,弗兰克·格里罗,吴刚,张翰,卢靖姗,丁海峰,淳于珊珊,余男,于谦,石兆琪,狄安娜·希拉,Ann James,Wachukwu Kennnedy Chukwuebuka,高明,周冠廷</p>
                <p>中国大陆 | 123分钟 &nbsp;&nbsp;&nbsp;&nbsp;2017-07-27 上映</p>
                <p id="intro" class="intro slideup">剧情：冷锋将卷入一场非洲国家的叛乱，本可以安全撤离的他，因无法忘记军人的使命，不丢下身陷囹圄的同胞和难民们，只身犯险冲回沦陷区，带领所有被困民众向邻国大逃亡。</p>
                <span class="more-btn" id="moreBtn" data-log="{'da_src':'webMovieDetailPg.introBk.moreBtn'}"></span>
            </div>

            
            <p class="collect" data-id="62880"><em>想看</em></p>
            
        </div>

        <div class="hide" >
            <div class="info info-copy" id="infoCopy">
                <h4 class="subtitle clearfix">
                    <div class="fl">战狼2</div>
                    <div class="record fl clearfix">
                        <p class="star fl"><span class="star-in fl" style="width:96%;"></span></p>
                        <span class="nuomi-orange font16 fl num">9.6</span>
                    </div>
                </h4>

                <div class="content">
                    <p class="des">犯我中华者 虽远必诛</p>

                    <p><span>导演：</span>吴京 </p>
                    <p><span>主演：</span>吴京,弗兰克·格里罗,吴刚,张翰,卢靖姗,丁海峰,淳于珊珊,余男,于谦,石兆琪,狄安娜·希拉,Ann James,Wachukwu Kennnedy Chukwuebuka,高明,周冠廷</p>
                    <p><span>剧情：</span>冷锋将卷入一场非洲国家的叛乱，本可以安全撤离的他，因无法忘记军人的使命，不丢下身陷囹圄的同胞和难民们，只身犯险冲回沦陷区，带领所有被困民众向邻国大逃亡。</p>
                    <p><span>地区：</span>中国大陆</p>
                    <p><span>片长：</span>123分钟</p>
                    <p><span>上映时间：</span>2017-07-27上映</p>
                    <span class="btn" id="contentBtn"></span>
                </div>
                <a class="choose-cinema" href="#cinemaCinemaFilter" id="chooseCinema">选座购票</a>
            </div>
        </div>

    </div>
</div>



    <div class="detail-right">
        <div class="widget-common-ranklist" id="commonRanklist">
    <h2 class="subtitle sub-title">当日票房排行榜</h2>
    <ul class="ranklist" id="ranklist">

    </ul>
    <!--p class="time">统计时间：06.12-06.20</p-->
</div>


    </div>

    <div id="pageletCinema"></div>
    








<div class="widget-movie-detail-more">
    <div class="data">
        <h3 class="subtitle">实时票房</h3>

        <ul class="data-list clearfix">
            <li>
                
                <p class="num">2</p>
                
                <p class="word font-grey font16">实时票房排行</p>
            </li>


            <li>
                
                    
                    

                    
                    
                    
                    <p class="num">219<span class="font-grey text">万</span></p>
                
                <p class="font-grey font16">实时票房</p>
            </li>

            <li>
                
                    
                    

                    
                    
                    
                    
                    
                    
                    <p class="num">54.94<span class="font-grey">亿</span></p>
                
                <p class="font-grey font16">实时总票房</p>
            </li>

        </ul>
    </div>
    <div class="recommend">
        <h3 class="subtitle">影院推荐</h3>
        <form name="cinema" action="cinema">
        <c:forEach items="${cinema}" var="s">
							 <ul class="movie-list clearfix">
            
           	
            
            <li style="width:100%;height:80px">
                
                
                
               <a href="jump?filmId=${s.filmId}" target="_blank" style="font-size:25px;">${s.address}&nbsp;&nbsp;${s.price}元</a>
               <p style="font-size:20">${s.address}</p>
            </li>
           
            
        </ul>			
													
										
								</c:forEach>
         
        
        </form>
        <h3 class="subtitle">相关推荐</h3>
        <ul class="movie-list clearfix">
            
            <li>
                
                
                
                <a href="javascript:;" class="img" data-url="/movie/detail?movieId=63069"
                   data-log="{'da_src':'webMovieDetailPg.recommendBk.movieLnk'}">
                    <img src="https://gsp0.baidu.com/6bNXsjip0QIZ8Aqbn9fN2DC/timg?size=7&name=cmoive&amp;di=75ca40b8e6198143ece1e0342a3271e9&amp;sec=0&amp;imgtype=0&amp;src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fmovie%2Fpic%2Fitem%2F5366d0160924ab1848e923ec3cfae6cd7a890b6a.jpg" />
                </a>
                <a href="javascript:;" class="name font16" data-url="/movie/detail?movieId=63069">银河护卫队2</a>
            </li>
            
            <li>
                
                
                
                <a href="javascript:;" class="img" data-url="/movie/detail?movieId=9716"
                   data-log="{'da_src':'webMovieDetailPg.recommendBk.movieLnk'}">
                    <img src="https://gsp0.baidu.com/6bNXsjip0QIZ8Aqbn9fN2DC/timg?size=7&name=cmoive&amp;di=cfdf8477ffb088e0f518838b8586a89f&amp;sec=0&amp;imgtype=0&amp;src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fmovie%2Fpic%2Fitem%2Fb151f8198618367a0d2a66ff24738bd4b31ce575.jpg" />
                </a>
                <a href="javascript:;" class="name font16" data-url="/movie/detail?movieId=9716">阿凡达2</a>
            </li>
            
            <li>
                
                
                
                <a href="javascript:;" class="img" data-url="/movie/detail?movieId=9578"
                   data-log="{'da_src':'webMovieDetailPg.recommendBk.movieLnk'}">
                    <img src="https://gsp0.baidu.com/6bNXsjip0QIZ8Aqbn9fN2DC/timg?size=7&name=cmoive&amp;di=9a8c6237528bd0a74ba60a457801f514&amp;sec=0&amp;imgtype=0&amp;src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fmovie%2Fpic%2Fitem%2F8b82b9014a90f603e4eec1493f12b31bb051ed66.jpg" />
                </a>
                <a href="javascript:;" class="name font16" data-url="/movie/detail?movieId=9578">终结者：创世纪</a>
            </li>
            
            <li>
                
                
                
                <a href="javascript:;" class="img" data-url="/movie/detail?movieId=10317"
                   data-log="{'da_src':'webMovieDetailPg.recommendBk.movieLnk'}">
                    <img src="https://gsp0.baidu.com/6bNXsjip0QIZ8Aqbn9fN2DC/timg?size=7&name=cmoive&amp;di=43bf6b3f24acdcad6da409bdc69a7cdd&amp;sec=0&amp;imgtype=0&amp;src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fmovie%2Fpic%2Fitem%2Fd043ad4bd11373f0a972e3d3ae0f4bfbfbed0428.jpg" />
                </a>
                <a href="javascript:;" class="name font16" data-url="/movie/detail?movieId=10317">变形金刚5：最后的骑士</a>
            </li>
            
            <li>
                
                
                
                <a href="javascript:;" class="img" data-url="/movie/detail?movieId=9719"
                   data-log="{'da_src':'webMovieDetailPg.recommendBk.movieLnk'}">
                    <img src="https://gsp0.baidu.com/6bNXsjip0QIZ8Aqbn9fN2DC/timg?size=7&name=cmoive&amp;di=5b1d24d0a0d7c574df24affeedfc59f5&amp;sec=0&amp;imgtype=0&amp;src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fmovie%2Fpic%2Fitem%2F0b46f21fbe096b638a94a8d70b338744eaf8acac.jpg" />
                </a>
                <a href="javascript:;" class="name font16" data-url="/movie/detail?movieId=9719">美国队长3</a>
            </li>
            
            <li>
                
                
                
                <a href="javascript:;" class="img" data-url="/movie/detail?movieId=9735"
                   data-log="{'da_src':'webMovieDetailPg.recommendBk.movieLnk'}">
                    <img src="https://gsp0.baidu.com/6bNXsjip0QIZ8Aqbn9fN2DC/timg?size=7&name=cmoive&amp;di=bfbf4c7e4fd8667baf26cb121d03c393&amp;sec=0&amp;imgtype=0&amp;src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fmovie%2Fpic%2Fitem%2Fdbb44aed2e738bd4df9e1925a68b87d6277ff963.jpg" />
                </a>
                <a href="javascript:;" class="name font16" data-url="/movie/detail?movieId=9735">星球大战：原力觉醒</a>
            </li>
            
        </ul>
    </div>
</div>


</div>





    </div>

</div>






</div>
<script type="text/javascript" src="/static/common/pkg/lib.js"></script><script type="text/javascript" src="/static/common/static/util/http_07a1657.js"></script><script type="text/javascript" src="/static/common/static/util/cookie_f4c070a.js"></script><script type="text/javascript" src="/static/common/pkg/util.js"></script><script type="text/javascript" src="/static/common/static/util/bdTemplate_28b34e7.js"></script><script type="text/javascript" src="/static/common/widget/ui/jsmod/main_ed5455d.js"></script><script type="text/javascript" src="/static/common/widget/ui/jsmod/Dialog/Dialog_a99a6d7.js"></script><script type="text/javascript" src="/static/common/widget/ui/dialog/dialog_3a6ceae.js"></script><script type="text/javascript" src="/static/common/pkg/ui.js"></script><script type="text/javascript" src="/static/movie/pkg/moviedetail.js"></script><script type="text/javascript" src="/static/common/widget/ranklist/ranklist_bf09e32.js"></script><script type="text/javascript">!function() {

window._commonData = {"location":{"cityId":75,"cityName":"成都"},"user":{"status":false}};

}();
!function() {

require("common:widget/nav/city/city.js").init();

}();
!function() {
require('common:widget/nav/nav.js').init();
}();
!function() {
require("common:widget/menu/menu.js").init({"location":{"cityId":75,"cityName":"成都"},"user":{"status":false}});
}();
!function() {
require("movie:widget/moviedetail/intro/intro.js").init();
}();
!function() {

var opt = {
    page:"webMovieDetailPg"
};
require("common:widget/ranklist/ranklist.js").init(opt);

}();
!function() {

window.addStat({
    da_src:'webMovieDetailPg',
    da_act:'ready'
});

require('movie:widget/moviedetail/moviedetail.js').init();
}();</script></body>

</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/medile.css" rel='stylesheet' type='text/css'/>
    <link href="css/single.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all"/>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <!-- //font-awesome icons -->
    <!-- news-css -->
    <link rel="stylesheet" href="news-css/news.css" type="text/css" media="all"/>
    <!-- //news-css -->
    <!-- list-css -->
    <link rel="stylesheet" href="list-css/list.css" type="text/css" media="all"/>
    <!-- //list-css -->
    <!-- js -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/owl.carousel.js"></script>
    <script>
        $(document).ready(function () {
            $("#owl-demo").owlCarousel({

                autoPlay: 3000, //Set AutoPlay to 3 seconds

                items: 5,
                itemsDesktop: [640, 5],
                itemsDesktopSmall: [414, 4]

            });

        });
    </script>

    <link href="/zijingwang/css0/style.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link rel="stylesheet" href="/zijingwang/css0/bootstrap.css"/>
    <link rel="stylesheet" href="/zijingwang/css0/style2.css"
          type="text/css" media="all"/>

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
            <li class="active"><a href="/zijingwang/">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
            <li><a href="/zijingwang/hotmovie">正在上映</a></li>
            <li><a href="#services" class="hvr-bounce-to-bottom scroll">选座购票</a></li>
            <li><a href="/zijingwang/article">影视资讯</a></li>
            <li><a href="#mail" class="hvr-bounce-to-bottom scroll">个人中心</a></li>
            <li><a href="/zijingwang/message">用户留言</a></li>
        </ul>
    </nav>
</div>
<div class="general-agileits-w3l">
<div class="w3l-medile-movies-grids">

<!-- /movie-browse-agile -->

<div class="movie-browse-agile">
<!--/browse-agile-w3ls -->
<div class="browse-agile-w3ls general-w3ls">
<div class="tittle-head">
    <h4 class="latest-text">正在热映</h4>

    <div class="container">
    </div>
</div>
<div class="container">
<div class="browse-inner">
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/1/detail" class="hvr-shutter-out-horizontal"><img
            src="image/e1.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/1/detail">战狼2</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-half-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/3/detail" class="hvr-shutter-out-horizontal"><img
            src="image/e2.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/3/detail">二十二</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/2/detail" class="hvr-shutter-out-horizontal"><img
            src="image/e3.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/2/detail">杀破狼·贪狼</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-half-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/6/detail" class="hvr-shutter-out-horizontal"><img
            src="image/e4.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/6/detail">破·局</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/10/detail" class="hvr-shutter-out-horizontal"><img
            src="image/e5.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/10/detail">赛车总动员3:极速挑战</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/4/detail" class="hvr-shutter-out-horizontal"><img
            src="image/e6.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/4/detail">十万个冷笑话2</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>

<div class="clearfix"></div>
</div>
<!-- /latest-movies1 -->
<div class="browse-inner-come-agile-w3">
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/5/detail" class="hvr-shutter-out-horizontal"><img
            src="image/x1.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/5/detail">赛尔号大电影6</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/7/detail" class="hvr-shutter-out-horizontal"><img
            src="image/e8.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/7/detail">星际之城·千星之城</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-half-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/9/detail" class="hvr-shutter-out-horizontal"><img
            src="image/e9.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/9/detail">心理罪</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/8/detail" class="hvr-shutter-out-horizontal"><img
            src="image/h10.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/9/detail">地球：神奇的一天</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-half-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/3/detail" class="hvr-shutter-out-horizontal"><img
            src="image/e2.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/3/detail">二十二 </a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="ribben two">
        <p>NEW</p>
    </div>
</div>
<div class="col-md-2 w3l-movie-gride-agile">
    <a href="/zijingwang/red/3/detail" class="hvr-shutter-out-horizontal"><img
            src="image/e2.jpg" title="album-name" alt=" "/>

        <div class="w3l-action-icon">
            <i class="fa fa-play-circle" aria-hidden="true"></i>
        </div>
    </a>

    <div class="mid-1">
        <div class="w3l-movie-text">
            <h6>
                <a href="/zijingwang/red/3/detail">二十二</a>
            </h6>
        </div>
        <div class="mid-2">

            <p>2017</p>

            <div class="block-stars">
                <ul class="w3l-ratings">
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o"
                                       aria-hidden="true"></i></a></li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
</div>
</body>
</html>
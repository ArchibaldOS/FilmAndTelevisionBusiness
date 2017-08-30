<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
</head>
<body>
<style media="screen">
    * {
        margin: 0;
        padding: 0;
    }

    html, body {
        height: 100%;
        width: 100%;
    }

    section {
        position: relative;
        height: 100%;
        width: 100%;
    }

    div {
        position: absolute;
        width: 20%;
        height: 60%;
        background: #808080;
        top: 20%;
        overflow: hidden;
    }

    .left {
        left: 10%;
    }

    .left img {
        height: 100%;
        display: block;
        margin-left: -15%;

        /*position: absolute;*/
        /*top:50%;*/
        /*left:50%;*/
        /*margin-top:-438px;*/
        /*margin-left: -50%;*/

    }

    .right img {
        height: 100%;
        display: block;
        margin-left: -70%;
    }

    .center img {
        height: 100%;
        display: block;
        margin-left: -28%;
    }

    .center {
        left: 41%;
    }

    .right {
        right: 10%;
    }

    div:hover img {
        -webkit-transform: translateY(-10px);
        -moz-transform: translateY(-10px);
        -ms-transform: translateY(-10px);
        transform: translateY(-10px);
    }

    img {
        -webkit-transition: -webkit-transform .3s;
        transition: -webkit-transform .3s;
        -moz-transition: transform .3s, -moz-transform .3s;
        transition: transform .3s;
        transition: transform .3s, -webkit-transform .3s, -moz-transform .3s;
    }

    .left span {
        /*display: block;*/
        position: absolute;
        top: 90%;
        left: 30%;
        font-size: 25px;
        color: white;
        width: 60%;
        height: 10%;
        font-family: sans-serif;
    }

    .right span {
        /*display: block;*/
        position: absolute;
        top: 90%;
        left: 30%;
        font-size: 25px;
        color: white;
        width: 60%;
        height: 10%;
        font-family: sans-serif;
    }

    .center span {
        /*display: block;*/
        position: absolute;
        top: 90%;
        left: 30%;
        font-size: 25px;
        color: white;
        width: 60%;
        height: 10%;
        font-family: sans-serif;
    }
</style>

<section>
    <div class="left">
        <a href="#"><img src="/zijingwang/assets/images/btn1.jpg"></a>
        <span>
            电影后台管理
        </span>
    </div>
    <div class="right">
        <a href="/zijingwang/cinema"><img src="/zijingwang/assets/images/btn2.jpg"></a>
        <span>
            电影后台管理
        </span>
    </div>
    <div class="center">
        <a href="#"><img src="/zijingwang/assets/images/btn3.jpg"></a>
        <span>
            电影后台管理
        </span>
    </div>
</section>
</body>
</html>

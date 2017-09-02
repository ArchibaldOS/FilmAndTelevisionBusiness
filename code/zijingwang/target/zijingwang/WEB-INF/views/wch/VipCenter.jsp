<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>紫荆网</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css1/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="css1/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css1/style2.css" type="text/css" media="all" />
    <link href="http://fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
    <!-- //font -->
    <script src="js1/jquery-1.11.1.min.js"></script>
    <script src="js1/bootstrap.js"></script>
    <style type="text/css">
    .but0{
      margin-top:50px;
      margin-left:20px;
      width:200px;
      heigth:15px;
    } 
    p{
       font-size:15px;
    } 
    .vipdata1{
    width:200px;
    
    margin-left:200px;
    }
    .picture{
    width:40px;
    height:40px;
    background:blue;
    
    }
    </style>
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
            
            	<!--  <h3 style="color:blue">	欢迎您：${ sessionScope.vipData.vipUsername}</h3><h5>(账号：)${ sessionScope.vipData.vipId}</h5>
          <!--  
                 <ul>
                    <li><a href="Userlogin.jsp">登陆</a></li>
                    <li><a href="../login_register/register.html">注册</a></li>
                </ul>
         --> 
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
                        <li><a href="#services" class="hvr-bounce-to-bottom scroll">选座购票</a></li>
                        <li><a href="/zijingwang/article">影视资讯</a></li>
                        <li class="active"><a href="/zijingwang/wchUserlogin" >个人中心</a></li>
                        <li><a href="/zijingwang/message">用户留言</a></li>
                    </ul>
                </nav>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
    </div>
</div>
    <div class="vipcenter">
        <div class="vip_header" >
            <h2>个人中心</h2>
        </div>
        <div class="vip_left">
            <!--<ul>-->
                <!--<li><a href="" class="vip_option"><h3>个人资料</h3></a></li>-->
                <!--<li><a href="" class="vip_option"><h4>基本资料</h4></a></li>-->
                <!--<li><a href="" class="vip_option"><h4>修改密码</h4></a></li>-->
            <!--</ul>-->
            <!--<ul>-->
                <!--<li><a href="" class="vip_option"><h3>账号管理</h3></a></li>-->
                <!--<li><a href="" class="vip_option"><h4>账号充值</h4></a></li>-->
                <!--<li><a href="" class="vip_option"><h4>查询充值记录</h4></a></li>-->
            <!--</ul>-->
            <!--<ul>-->
                <!--<li><a href="" class="vip_option"><h3>购票管理</h3></a></li>-->
                <!--<li><a href="" class="vip_option"><h4>查询购票记录</h4></a></li>-->
            <!--</ul>-->
            <!--<ul>-->
                <!--<li><a href="" class="vip_option"><h3>积分管理</h3></a></li>-->
                <!--<li><a href="" class="vip_option"><h4>查询积分记录</h4></a></li>-->
            <!--</ul>-->
            <div class="navigation">
               <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
            <ul id="myTab" class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#information" id="information-tab" role="tab" data-toggle="tab" aria-controls="information" aria-expanded="true"><h3>个人资料</h3></a></li>
                <li role="presentation"><a href="#basics" role="tab" id="basics-tab" data-toggle="tab" aria-controls="basics">基础资料</a></li>
                <li role="presentation"><a href="#amend" role="tab" id="amend-tab" data-toggle="tab" aria-controls="amend">修改密码</a></li>
                <li role="presentation"><a href="#account" role="tab" id="account-tab" data-toggle="tab" aria-controls="account"><h3>账号管理</h3></a></li>
                <li role="presentation"><a href="#recharge" role="tab" id="recharge-tab" data-toggle="tab" aria-controls="recharge">账号充值</a></li>
                <li role="presentation"><a href="#rech_record" role="tab" id="rech_record-tab" data-toggle="tab" aria-controls="rech_record">查看充值记录</a></li>
                <li role="presentation"><a href="#buying" role="tab" id="buying-tab" data-toggle="tab" aria-controls="buying"><h3>购票管理</h3></a></li>
                <li role="presentation"><a href="#buy_record" role="tab" id="buy_record-tab" data-toggle="tab" aria-controls="buy_record">查看购票记录</a></li>
                <li role="presentation"><a href="#total" role="tab" id="total-tab" data-toggle="tab" aria-controls="total"><h3>积分管理</h3></a></li>
                <li role="presentation"><a href="#total_record" role="tab" id="total_record-tab" data-toggle="tab" aria-controls="total_record">查看积分记录</a></li>
            </ul>
            </div>
            </div>


        </div>
            <div class="vip_right">
                <div id="myTabContent" class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="information" aria-labelledby="information-tab">
                    <div class="vip_manage">
                        <h2>个人资料</h2>
                        <form  action="" method="post" class="vipdata1">
                        <p>    账号：${sessionScope.vipData.vipId}</p><br/>
                        <p> 用户名：${sessionScope.vipData.vipUsername}<p><br/>
                        <p> 账号余额：${sessionScope.vipData.vipBalance }<p><br/>
                        <p>会员积分：${sessionScope.vipData.vipTotal }<p><br/>
                        <p> 会员等级：${sessionScope.vipData.vipRank }<p><br/>
                        <p> 上次登陆：${sessionScope.vipData.vipLastlogin }<p><br/>
                        <p> 注册日期：${sessionScope.vipData.vipRegisterDate }<p><br/>

                        </form>
                       	
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="basics" aria-labelledby="basics-tab">
                    <div class="vip_manage">
                        <h2>基本资料</h2>
                        <form  action="vipdataupdate" method="post" class="vipdata">
                        <input type="hidden" name="vipId" value="${sessionScope.vipData.vipId}">
                            用户名：${sessionScope.vipData.vipUsername}<br/>
                            姓&nbsp;&nbsp;&nbsp;名：<input class="vipinfo" type="text" name="vipName"  value="${sessionScope.vipData.vipName}" ><br/>
                            性&nbsp;&nbsp;&nbsp;别：<select name="vipGender" value="${sessionScope.vipData.vipGender}">
                                    <option value="男">男</option>
                                    <option value="女">女</option>
                                	</select>
                                   <br/>
                            生&nbsp;&nbsp;&nbsp;日：<input class="vipinfo" type="date" name="vipBirthday" value="${sessionScope.vipData.vipBirthday}"><br/>
                            手机号：<span id="tel">${sessionScope.vipData.vipTelephone }</span> <br/>

                            <input class="but0" type="submit" value="保存">

                        </form>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="amend" aria-labelledby="amend-tab">
                    <div class="vip_manage">
                         <h2>修改密码</h2>
                        <form  action="" method="post" class="vipdata">
                            输入手机号：<input class="vipinfo" type="text" name="VipTelephone"><br/>
                            输入验证码：<input class="vipinfo" type="text" name="code"><br/>
                            输入新密码：<input class="vipinfo" type="password" name="VipPassword"><br/>
                            <input class="checkCode" type="button" id="btn" value="点击获取验证码" />

                            <input class="but0" type="submit" value="确认">


                        </form>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="account" aria-labelledby="account-tab">
                    <div class="vip_manage">
                            <h2>账号管理</h2>

                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="recharge" aria-labelledby="recharge-tab">
                    <div class="vip_manage">
                         <h2>账号充值</h2>
                        <form  action="recharge" method="post" class="vipdata">
                          输入要充值的账号：<input class="vipinfo" type="text" name="vipId"><br/>
                          输入充值金额：<input class="vipinfo" type="text" name="rechMoney"><br/>
                          选择充值方式：<select name="rechWay">
                                    <option value="1">支付宝</option>
                                    <option value="2">微信</option>
                                	</select>
                            <input class="but0" type="submit" value="确认充值">
                        </form>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="rech_record" aria-labelledby="rech_record-tab">
                    <div class="vip_manage">
                        <h2>查询充值记录</h2>
                        <div class="vipsearch">
                            <form action="searchrecharge" method="get">
                                <label>请选择查询时间：</label>
                                <select name="">
                                    <option value="0">近一周</option>
                                    <option value="1">近一个月</option>
                                    <option value="2">近三个月</option>
                                </select>
                            <input type="hidden" name="vipId" value="${sessionScope.vipData.vipId}">
                            <input  type="submit" value="查询">
                            </form>
                            <c:set var="pager" value="${requestScope.pager }"/>
                            <table border="1" width="100%" bgcolor="aqua">
                                <thead>
                                <tr>
                                    <th>充值账号</th>
                                    <th>充值金额</th>
                                    <th>充值方式</th>
                                    <th>充值日期</th>
                                </tr>
                                </thead>
                                <tbody>
										<c:choose>
											<c:when test="${pager ne null and pager.list ne null }">
												<c:forEach items="${pager.list }" var="r">
												<tr>
													<td>${r.rechId }</td>
													<td>${r.rechMoney } </td>
													<td>${r.rechWay }</td>
													<td>${r.rechDate }</td>
												<!--  <td>
														<a href="/ssm/delete?aid=${a.aid }">删除</a>
														<a href="/ssm/get?aid=${a.aid }">编辑</a>
													</td>-->	
												</tr>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<tr>
													<td colspan="5">查无数据</td>
												</tr>
											</c:otherwise>
											</c:choose>
                                    
                              
                                </tbody>
                            </table>
								<table width="100%">
                                        <tr>
                                            <td align="right">
                                                <span>第${pager.current}/${pager.total}页</span>
                                                <span>
                                                    <c:if test="${pager.current != 1}">
                                                        <a href="/zijingwang/searchrecharge?cur=1&vipId=${sessionScope.vipData.vipId}">[首页]</a>&nbsp;&nbsp;
                                                        <a href="/zijingwang/searchrecharge?cur=${pager.current-1}&vipId=${sessionScope.vipData.vipId}">[上一页]</a>&nbsp;&nbsp;
                                                    </c:if>
                                                    <c:forEach begin="1" end="${pager.total }" var="cur">
                                                        <a href="/zijingwang/searchrecharge?cur=${cur}&vipId=${sessionScope.vipData.vipId}">${cur }</a>
                                                    </c:forEach>
                                                    <c:if test="${pager.current != pager.total}">
                                                        <a href="/zijingwang/searchrecharge?cur=${pager.current+1}&vipId=${sessionScope.vipData.vipId}">[下一页]</a>&nbsp;&nbsp;
                                                        <a href="/zijingwang/searchrecharge?cur=${pager.total}&vipId=${sessionScope.vipData.vipId}">[尾页]</a>&nbsp;&nbsp;
                                                    </c:if>
			                                    </span>
                                            </td>
                                        </tr>
                                    </table>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="buying" aria-labelledby=buying-tab">
                        <div class="vip_manage">
                            <h2>购票管理</h2>
                        </div>
                    </div>
                <div role="tabpanel" class="tab-pane fade" id="buy_record" aria-labelledby="buy_record-tab">
                        <div class="vip_manage">
                            <h2>查询购票记录</h2>
                            <div class="vipsearch">
                                <form action="searchconsume" method="get">
                                    <label>请选择查询时间：</label>
                                    <select name="">
                                        <option value="0">近一周</option>
                                        <option value="1">近一个月</option>
                                        <option value="2">近三个月</option>
                                    </select>
                                <input type="hidden" name="vipId" value="${sessionScope.vipData.vipId}">
                                <input type="submit" value="查询">
                                </form>
                                <c:set var="pagec" value="${requestScope.pagec }"/>
                                <table border="1" width="100%" bgcolor="aqua">
                                    <thead>
                                    <tr>
                                        <th>购票编号</th>
                                        <th>消费金额</th>
                                        <th>购票方式</th>
                                        <th>购票日期</th>
                                    </tr>
                                    </thead>
                                    <tbody>
	<c:choose>
											<c:when test="${pagec ne null and pagec.list ne null }">
												<c:forEach items="${pagec.list }" var="c">
												<tr>
													<td>${c.buyId }</td>
													<td>${c.buyMoney } </td>
													<td>${c.buyWay }</td>
													<td>${c.buyDate }</td>
												<!--  <td>
														<a href="/ssm/delete?aid=${a.aid }">删除</a>
														<a href="/ssm/get?aid=${a.aid }">编辑</a>
													</td>-->	
												</tr>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<tr>
													<td colspan="5">查无数据</td>
												</tr>
											</c:otherwise>
											</c:choose>
                                    
                                    
                                    </tbody>
                                </table>
                                <%--<table width="100%">--%>
                                        <%--<tr>--%>
                                            <%--<td align="right">--%>
                                                <%--<span>第${pagec.current}/${pagec.total}页</span>--%>
                                                <%--<span>--%>
                                                    <%--<c:if test="${pagec.current != 1}">--%>
                                                        <%--<a href="/zijingwang/searchconsume?cur=1&vipId=${sessionScope.vipData.vipId}">[首页]</a>&nbsp;&nbsp;--%>
                                                        <%--<a href="/zijingwang/searchconsume?cur=${pagec.current-1}&vipId=${sessionScope.vipData.vipId}">[上一页]</a>&nbsp;&nbsp;--%>
                                                    <%--</c:if>--%>
                                                    <%--<c:forEach begin="1" end="${pagec.total }" var="cur">--%>
                                                        <%--<a href="/zijingwang/searchconsume?cur=${cur}&vipId=${sessionScope.vipData.vipId}">${cur }</a>--%>
                                                    <%--</c:forEach>--%>
                                                    <%--<c:if test="${pagec.current != c.total}">--%>
                                                        <%--<a href="/zijingwang/searchconsume?cur=${pagec.current+1}&vipId=${sessionScope.vipData.vipId}">[下一页]</a>&nbsp;&nbsp;--%>
                                                        <%--<a href="/zijingwang/searchconsume?cur=${pagec.total}&vipId=${sessionScope.vipData.vipId}">[尾页]</a>&nbsp;&nbsp;--%>
                                                    <%--</c:if>--%>
			                                    <%--</span>--%>
                                            <%--</td>--%>
                                        <%--</tr>--%>
                                    <%--</table>--%>

                            </div>
                        </div>
                    </div>
                <div role="tabpanel" class="tab-pane fade" id="total" aria-labelledby="total-tab">
                        <div class="vip_manage">
                            <h2>积分管理</h2>
                        </div>
                    </div>
                <div role="tabpanel" class="tab-pane fade" id="total_record" aria-labelledby="total_record-tab">
                        <div class="vip_manage">
                            <h2>查询积分记录</h2>
                            <div class="vipsearch">
                                <form action="/zijingwang/searchtotal" method="get">
                                    <label>请选择查询时间：</label>
                                    <select name="">
                                        <option value="0">近一周</option>
                                        <option value="1">近一个月</option>
                                        <option value="2">近三个月</option>
                                    </select>
                                    <input type="hidden" name="vipId" value="${sessionScope.vipData.vipId}">
                                    <input type="submit" value="查询">
                                </form>
                                <c:set var="paget" value="${requestScope.paget }"/>
                                <table border="1" width="100%" bgcolor="aqua">
                                    <thead>
                                    <tr>
                                        <th>积分获取编号</th>
                                        <th>获得积分数额</th>
                                        <th>积分获取方式</th>
                                        <th>积分获得时间</th>
                                    </tr>
                                    </thead>
                                    <tbody>
										<c:choose>
											<c:when test="${paget ne null and paget.list ne null }">
												<c:forEach items="${paget.list }" var="t">
												<tr>
													<td>${t.totalRelId }</td>
													<td>${t.totalCount } </td>
													<td>${t.totalWay }</td>
													<td>${t.totalDate }</td>
												<!--  <td>
														<a href="/ssm/delete?aid=${a.aid }">删除</a>
														<a href="/ssm/get?aid=${a.aid }">编辑</a>
													</td>-->	
												</tr>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<tr>
													<td colspan="5">查无数据</td>
												</tr>
											</c:otherwise>
											</c:choose>
                                    </tbody>
                                </table>
								<%--<table width="100%">--%>
                                        <%--<tr>--%>
                                            <%--<td align="right">--%>
                                                <%--<span>第${paget.current}/${paget.total}页</span>--%>
                                                <%--<span>--%>
                                                    <%--<c:if test="${paget.current != 1}">--%>
                                                        <%--<a href="/zijingwang/searchtotal?cur=1&vipId=${sessionScope.vipData.vipId}">[首页]</a>&nbsp;&nbsp;--%>
                                                        <%--<a href="/zijingwang/searchtotal?cur=${paget.current-1}&vipId=${sessionScope.vipData.vipId}">[上一页]</a>&nbsp;&nbsp;--%>
                                                    <%--</c:if>--%>
                                                    <%--<c:forEach begin="1" end="${paget.total }&vipId=${sessionScope.vipData.vipId}" var="cur">--%>
                                                        <%--<a href="/zijingwang/searchtotal?cur=${cur}&vipId=${sessionScope.vipData.vipId}">${cur }</a>--%>
                                                    <%--</c:forEach>--%>
                                                    <%--<c:if test="${paget.current != paget.total}">--%>
                                                        <%--<a href="/zijingwang/searchtotal?cur=${paget.current+1}&vipId=${sessionScope.vipData.vipId}">[下一页]</a>&nbsp;&nbsp;--%>
                                                        <%--<a href="/zijingwang/searchtotal?cur=${paget.total}&vipId=${sessionScope.vipData.vipId}">[尾页]</a>&nbsp;&nbsp;--%>
                                                    <%--</c:if>--%>
			                                    <%--</span>--%>
                                            <%--</td>--%>
                                        <%--</tr>--%>
                                    <%--</table>--%>
                            </div>
                        </div>
                    </div>

            </div>
        </div>

    </div>



    <!--底部-->
    <footer>
        <div class="container">
            <div class="copyright">
                <p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
            </div>
        </div>
    </footer>
</body>
</html>l>
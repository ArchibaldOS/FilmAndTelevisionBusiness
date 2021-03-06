<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>留言列表</title>
<style type="text/css">
 #p{
	margin-left: 10px;
	text-align: center;
} 

#p a {
		border:1px solid #000;
		display:inline-block;
		padding: 2px 5px;
		margin:0 5px;
		text-decoration: none;
	}

</style>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport' />

<!--[if lt IE 9]>
    <script src='assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
<link href='assets/stylesheets/bootstrap/bootstrap2.css' media='all'
	rel='stylesheet' type='text/css' />
<link href='assets/stylesheets/bootstrap/bootstrap-responsive.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jquery ui -->
<link href='assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css'
	media='all' rel='stylesheet' type='text/css' />
<link href='assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / switch buttons -->
<link
	href='assets/stylesheets/plugins/bootstrap_switch/bootstrap-switch.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / xeditable -->
<link href='assets/stylesheets/plugins/xeditable/bootstrap-editable.css'
	media='all' rel='stylesheet' type='text/css' />
<link href='assets/stylesheets/plugins/common/bootstrap-wysihtml5.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / wysihtml5 (wysywig) -->
<link href='assets/stylesheets/plugins/common/bootstrap-wysihtml5.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jquery file upload -->
<link
	href='assets/stylesheets/plugins/jquery_fileupload/jquery.fileupload-ui.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / full calendar -->
<link href='assets/stylesheets/plugins/fullcalendar/fullcalendar.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / select2 -->
<link href='assets/stylesheets/plugins/select2/select2.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / mention -->
<link href='assets/stylesheets/plugins/mention/mention.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / tabdrop (responsive tabs) -->
<link href='assets/stylesheets/plugins/tabdrop/tabdrop.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / jgrowl notifications -->
<link href='assets/stylesheets/plugins/jgrowl/jquery.jgrowl.min.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / datatables -->
<link
	href='assets/stylesheets/plugins/datatables/bootstrap-datatable.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / dynatrees (file trees) -->
<link href='assets/stylesheets/plugins/dynatree/ui.dynatree.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / color picker -->
<link
	href='assets/stylesheets/plugins/bootstrap_colorpicker/bootstrap-colorpicker.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / datetime picker -->
<link
	href='assets/stylesheets/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / daterange picker) -->
<link
	href='assets/stylesheets/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / flags (country flags) -->
<link href='assets/stylesheets/plugins/flags/flags.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / slider nav (address book) -->
<link href='assets/stylesheets/plugins/slider_nav/slidernav.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / fuelux (wizard) -->
<link href='assets/stylesheets/plugins/fuelux/wizard.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / flatty theme -->
<link href='assets/stylesheets/light-theme.css'
	id='color-settings-body-color' media='all' rel='stylesheet'
	type='text/css' />
<!-- / demo -->
<link href='assets/stylesheets/demo.css' media='all' rel='stylesheet'
	type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
function de(messageId){

	$.get('/zijingwang/messageDelete',	{'messageId':messageId}, function(data){
	
		if(data == 1){ 
			alert("delete succeed");
			window.location.href = "/zijingwang/listMessage";
		}
		else alert("delete fail");
		}, 'json');
	}
	
	
</script>
</head>
<body class='contrast-blue '>
	<header>
	<div class='navbar'>
		<div class='navbar-inner'>
			<div class='container-fluid'>
				 <a class='brand' href='/zijingwang/backIndex'> <i
					class='icon-heart-empty'></i> <span class='hidden-phone'>后台管理系统</span>
				</a> <a class='toggle-nav btn pull-left' href='#'> <i
					class='icon-reorder'></i>
				</a>
				<!--导航栏右侧 -->
				<ul class='nav pull-right'>
					<!--切换颜色 -->
					<li class='dropdown light only-icon'><a
						class='dropdown-toggle' data-toggle='dropdown' href='#'> <i
							class='icon-adjust'></i>
					</a>
						<ul class='dropdown-menu color-settings'>
							<li class='divider'></li>
							<li class='color-settings-contrast-color'>
								<div class='color-title'>主题颜色</div> <a href="#"
								data-change-to="contrast-red"><i
									class='icon-adjust text-red'></i> Red </a> <a href="#"
								data-change-to="contrast-blue"><i
									class='icon-adjust text-blue'></i> Blue <small>(default)</small>
							</a> <a href="#" data-change-to="contrast-orange"><i
									class='icon-adjust text-orange'></i> Orange </a> <a href="#"
								data-change-to="contrast-purple"><i
									class='icon-adjust text-purple'></i> Purple </a> <a href="#"
								data-change-to="contrast-green"><i
									class='icon-adjust text-green'></i> Green </a> <a href="#"
								data-change-to="contrast-muted"><i
									class='icon-adjust text-muted'></i> Muted </a> <a href="#"
								data-change-to="contrast-fb"><i class='icon-adjust text-fb'></i>
									Facebook </a> <a href="#" data-change-to="contrast-dark"><i
									class='icon-adjust text-dark'></i> Dark </a> <a href="#"
								data-change-to="contrast-pink"><i
									class='icon-adjust text-pink'></i> Pink </a> <a href="#"
								data-change-to="contrast-grass-green"><i
									class='icon-adjust text-grass-green'></i> Grass green </a> <a
								href="#" data-change-to="contrast-sea-blue"><i
									class='icon-adjust text-sea-blue'></i> Sea blue </a> <a href="#"
								data-change-to="contrast-banana"><i
									class='icon-adjust text-banana'></i> Banana </a> <a href="#"
								data-change-to="contrast-dark-orange"><i
									class='icon-adjust text-dark-orange'></i> Dark orange </a> <a
								href="#" data-change-to="contrast-brown"><i
									class='icon-adjust text-brown'></i> Brown </a>
							</li>
						</ul></li>
					<!--切换颜色 -->
					
					<!--用户信息下拉列表 -->
					<li class='dropdown dark user-menu'><a class='dropdown-toggle'
						data-toggle='dropdown' href='#'> <img alt='Mila Kunis'
							height='23' src=' assets/images/avatar2.jpg' width='23' /> <span
							class='user-name hidden-phone'>管理员</span>
					</a>
						</li>
					<!--用户信息下拉列表 -->
				</ul>
				<!--导航栏右侧 -->
			</div>
		</div>
	</div>
	</header>
	<div id='wrapper'>
		<div id='main-nav-bg'></div>
		<nav class='' id='main-nav'>
		<div class='navigation'>
			<!--左侧导航栏-->
			<ul class='nav nav-stacked'>
				<!--文章管理-->
				<li class=''><a class='dropdown-collapse' href='#'> <i
						class='icon-edit'></i> <span>文章管理</span> <i
						class='icon-angle-down angle-down'></i>
				</a>
					<ul class='nav nav-stacked'>
						<li class=''><a href='/zijingwang/addArticle'> <i
								class='icon-caret-right'></i> <span>发布文章</span>
						</a></li>
						<li class=''><a href='/zijingwang/listArticle'> <i
								class='icon-caret-right'></i> <span>查看所有文章</span>
						</a></li></li>
			</ul>
			</li>
			<!--文章管理-->


			<!--敏感词管理-->
			<li class=''><a class='dropdown-collapse' href='#'> <i
					class='icon-edit'></i> <span>敏感词管理</span> <i
					class='icon-angle-down angle-down'></i>
			</a>
				<ul class='nav nav-stacked'>
					<li class=''><a href='/zijingwang/addSense'>
							<!--链接到标签对应的html页面--> <i class='icon-caret-right'></i> <span>增加敏感词</span>
					</a></li>
					<li class=''><a href='/zijingwang/listSense'>
							<!--链接到标签对应的html页面--> <i class='icon-caret-right'></i> <span>查询所有敏感词</span>
					</a></li>
				</ul></li>
			<!--敏感词管理-->


			<!--留言管理-->
			<li class=''><a class='dropdown-collapse' href='#'> <i
					class='icon-edit'></i> <span>留言管理</span> <i
					class='icon-angle-down angle-down'></i>
			</a>
				<ul class='nav nav-stacked'>
					<li class=''><a href='/zijingwang/listMessage'> <!--链接到标签对应的html页面-->
							<i class='icon-caret-right'></i> <span>查看所有留言</span>
					</a></li>
				</ul></li>
			<!--留言管理-->
			
			<!--文章评论管理-->
			<li class=''><a class='dropdown-collapse' href='#'> <i
					class='icon-edit'></i> <span>文章评论管理</span> <i
					class='icon-angle-down angle-down'></i>
			</a>
				<ul class='nav nav-stacked'>
					<li class=''><a href='/zijingwang/listArticleComment'> <!--链接到标签对应的html页面-->
							<i class='icon-caret-right'></i> <span>查看所有评论</span>
					</a></li>
				</ul></li>
			<!--文章评论管理-->
			
			</ul>
		</div>
		</nav>
		<!--核心显示区-->
		<section id='content'>
		<div class='container-fluid'>
			<div class='row-fluid' id='content-wrapper'>
				<div class='span12'>
					<!--第一部分-->
					<div class='row-fluid'>
						<div class='span12'>
							<div class='page-header'>
								<h1 class='pull-left'>
									<i class='icon-edit'></i> <span>留言管理</span>
								</h1>
							</div>
						</div>
					</div>
					<!--第一部分-->


					<!--表格2区域-->
					<div class='row-fluid'>
						<div class='span12 box bordered-box blue-border'
							style='margin-bottom: 0;'>
							<div class='box-header blue-background'>
								<div class='title'>留言列表</div>
								<div class='actions'>
									<a href="#" class="btn box-remove btn-mini btn-link"><i
										class='icon-remove'></i> </a> <a href="#"
										class="btn box-collapse btn-mini btn-link"><i></i> </a>
								</div>
							</div>
							<div class='box-content box-no-padding'>
								<div class='responsive-table'>
									<div class='scrollable-area'>
									<c:set var="page" value="${requestScope.page }" />
										<table class='table table-bordered table-striped'
											style='margin-bottom: 0;'>
											<thead>
												<tr>
													<th>留言编号</th>
													<th>用户编号</th>
													<th>留言内容</th>
													<th>留言时间</th>
													<th>回复内容</th>
													<td>回复</td>
													<th>删除</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${page ne null and page.list ne null }">
														<c:forEach items="${page.list }" var="m">
															<tr>
																<td>${m.messageId }</td>
																<td>${m.userId }</td>
																<td>${m.messageContent }</td>
																<td>${m.messageTime }</td>
																<td>${m.replyMessage }</td>
																<td><button class="btn btn-success" name="button"
																		style="margin-bottom: 5px" type="submit"
																		onclick="location.href='/zijingwang/messageReply?messageId=${m.messageId}'">回复</button></td>
																<td><button class="btn btn-danger" name="button"
																		style="margin-bottom: 5px" type="submit"
																		onclick="de(${m.messageId})">删除</button></td>
															</tr>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="7">查无数据</td>
														</tr>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
										
									</div>
								</div>
								<div id="p">
											<c:if test="${page.current gt 1 }">
												<a href="/zijingwang/listMessage?cur=${page.current-1 }">上一页</a>
											</c:if>
											<c:forEach begin="1" end="${page.total }" var="cur">
												<a href="/zijingwang/listMessage?cur=${cur }">${cur }</a>
											</c:forEach>
											<c:if test="${page.current lt page.total }">
												<a href="/zijingwang/listMessage?cur=${page.current+1 }">下一页</a>
											</c:if>
										</div>
							</div>
						</div>
						<!--表格2区域-->



					</div>
				</div>
			</div>
		</section>
		<!--核心显示区-->
	</div>
	<!-- / jquery -->
	<script src='assets/javascripts/jquery/jquery.min.js'
		type='text/javascript'></script>
	<!-- / jquery mobile events (for touch and slide) -->
	<script
		src='assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js'
		type='text/javascript'></script>
	<!-- / jquery migrate (for compatibility with new jquery) -->
	<script src='assets/javascripts/jquery/jquery-migrate.min.js'
		type='text/javascript'></script>
	<!-- / jquery ui -->
	<script src='assets/javascripts/jquery_ui/jquery-ui.min.js'
		type='text/javascript'></script>
	<!-- / bootstrap -->
	<script src='assets/javascripts/bootstrap/bootstrap.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/flot/excanvas.js'
		type='text/javascript'></script>
	<!-- / sparklines -->
	<script
		src='assets/javascripts/plugins/sparklines/jquery.sparkline.min.js'
		type='text/javascript'></script>
	<!-- / flot charts -->
	<script src='assets/javascripts/plugins/flot/flot.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/flot/flot.resize.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/flot/flot.pie.js'
		type='text/javascript'></script>
	<!-- / bootstrap switch -->
	<script
		src='assets/javascripts/plugins/bootstrap_switch/bootstrapSwitch.min.js'
		type='text/javascript'></script>
	<!-- / fullcalendar -->
	<script
		src='assets/javascripts/plugins/fullcalendar/fullcalendar.min.js'
		type='text/javascript'></script>
	<!-- / datatables -->
	<script
		src='assets/javascripts/plugins/datatables/jquery.dataTables.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js'
		type='text/javascript'></script>
	<!-- / wysihtml5 -->
	<script src='assets/javascripts/plugins/common/wysihtml5.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/common/bootstrap-wysihtml5.js'
		type='text/javascript'></script>
	<!-- / select2 -->
	<script src='assets/javascripts/plugins/select2/select2.js'
		type='text/javascript'></script>
	<!-- / color picker -->
	<script
		src='assets/javascripts/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js'
		type='text/javascript'></script>
	<!-- / mention -->
	<script src='assets/javascripts/plugins/mention/mention.min.js'
		type='text/javascript'></script>
	<!-- / input mask -->
	<script
		src='assets/javascripts/plugins/input_mask/bootstrap-inputmask.min.js'
		type='text/javascript'></script>
	<!-- / fileinput -->
	<script
		src='assets/javascripts/plugins/fileinput/bootstrap-fileinput.js'
		type='text/javascript'></script>
	<!-- / modernizr -->
	<script src='assets/javascripts/plugins/modernizr/modernizr.min.js'
		type='text/javascript'></script>
	<!-- / retina -->
	<script src='assets/javascripts/plugins/retina/retina.js'
		type='text/javascript'></script>
	<!-- / fileupload -->
	<script src='assets/javascripts/plugins/fileupload/tmpl.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/fileupload/load-image.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/canvas-to-blob.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/jquery.iframe-transport.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/jquery.fileupload.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/jquery.fileupload-fp.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/jquery.fileupload-ui.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/jquery.fileupload-init.js'
		type='text/javascript'></script>
	<!-- / timeago -->
	<script src='assets/javascripts/plugins/timeago/jquery.timeago.js'
		type='text/javascript'></script>
	<!-- / slimscroll -->
	<script
		src='assets/javascripts/plugins/slimscroll/jquery.slimscroll.min.js'
		type='text/javascript'></script>
	<!-- / autosize (for textareas) -->
	<script
		src='assets/javascripts/plugins/autosize/jquery.autosize-min.js'
		type='text/javascript'></script>
	<!-- / charCount -->
	<script src='assets/javascripts/plugins/charCount/charCount.js'
		type='text/javascript'></script>
	<!-- / validate -->
	<script
		src='assets/javascripts/plugins/validate/jquery.validate.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/validate/additional-methods.js'
		type='text/javascript'></script>
	<!-- / naked password -->
	<script
		src='assets/javascripts/plugins/naked_password/naked_password-0.2.4.min.js'
		type='text/javascript'></script>
	<!-- / nestable -->
	<script src='assets/javascripts/plugins/nestable/jquery.nestable.js'
		type='text/javascript'></script>
	<!-- / tabdrop -->
	<script src='assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js'
		type='text/javascript'></script>
	<!-- / jgrowl -->
	<script src='assets/javascripts/plugins/jgrowl/jquery.jgrowl.min.js'
		type='text/javascript'></script>
	<!-- / bootbox -->
	<script src='assets/javascripts/plugins/bootbox/bootbox.min.js'
		type='text/javascript'></script>
	<!-- / inplace editing -->
	<script
		src='assets/javascripts/plugins/xeditable/bootstrap-editable.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/xeditable/wysihtml5.js'
		type='text/javascript'></script>
	<!-- / ckeditor -->
	<script src='assets/javascripts/plugins/ckeditor/ckeditor.js'
		type='text/javascript'></script>
	<!-- / filetrees -->
	<script
		src='assets/javascripts/plugins/dynatree/jquery.dynatree.min.js'
		type='text/javascript'></script>
	<!-- / datetime picker -->
	<script
		src='assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js'
		type='text/javascript'></script>
	<!-- / daterange picker -->
	<script
		src='assets/javascripts/plugins/bootstrap_daterangepicker/moment.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.js'
		type='text/javascript'></script>
	<!-- / max length -->
	<script
		src='assets/javascripts/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js'
		type='text/javascript'></script>
	<!-- / dropdown hover -->
	<script
		src='assets/javascripts/plugins/bootstrap_hover_dropdown/twitter-bootstrap-hover-dropdown.min.js'
		type='text/javascript'></script>
	<!-- / slider nav (address book) -->
	<script src='assets/javascripts/plugins/slider_nav/slidernav-min.js'
		type='text/javascript'></script>
	<!-- / fuelux -->
	<script src='assets/javascripts/plugins/fuelux/wizard.js'
		type='text/javascript'></script>
	<!-- / flatty theme -->
	<script src='assets/javascripts/nav.js' type='text/javascript'></script>
	<script src='assets/javascripts/tables.js' type='text/javascript'></script>
	<script src='assets/javascripts/theme.js' type='text/javascript'></script>
	<!-- / demo -->
	<script src='assets/javascripts/demo/jquery.mockjax.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/demo/inplace_editing.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/demo/charts.js' type='text/javascript'></script>
	<script src='assets/javascripts/demo/demo.js' type='text/javascript'></script>
	<div style="display: none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>
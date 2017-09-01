<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>影视业务电子商务平台——电影后台管理</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'/>

    <!--[if lt IE 9]>
    <script src='/zijingwang/assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
    <link href='/zijingwang/assets/stylesheets/bootstrap/bootstrap2.css' media='all' rel='stylesheet' type='text/css'/>
    <link href='/zijingwang/assets/stylesheets/bootstrap/bootstrap-responsive.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / jquery ui -->
    <link href='/zijingwang/assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css' media='all' rel='stylesheet'
          type='text/css'/>
    <link href='/zijingwang/assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / switch buttons -->
    <link href='/zijingwang/assets/stylesheets/plugins/bootstrap_switch/bootstrap-switch.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / xeditable -->
    <link href='/zijingwang/assets/stylesheets/plugins/xeditable/bootstrap-editable.css' media='all' rel='stylesheet'
          type='text/css'/>
    <link href='/zijingwang/assets/stylesheets/plugins/common/bootstrap-wysihtml5.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / wysihtml5 (wysywig) -->
    <link href='/zijingwang/assets/stylesheets/plugins/common/bootstrap-wysihtml5.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / jquery file upload -->
    <link href='/zijingwang/assets/stylesheets/plugins/jquery_fileupload/jquery.fileupload-ui.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / full calendar -->
    <link href='/zijingwang/assets/stylesheets/plugins/fullcalendar/fullcalendar.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / select2 -->
    <link href='/zijingwang/assets/stylesheets/plugins/select2/select2.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / mention -->
    <link href='/zijingwang/assets/stylesheets/plugins/mention/mention.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / tabdrop (responsive tabs) -->
    <link href='/zijingwang/assets/stylesheets/plugins/tabdrop/tabdrop.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / jgrowl notifications -->
    <link href='/zijingwang/assets/stylesheets/plugins/jgrowl/jquery.jgrowl.min.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / datatables -->
    <link href='/zijingwang/assets/stylesheets/plugins/datatables/bootstrap-datatable.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / dynatrees (file trees) -->
    <link href='/zijingwang/assets/stylesheets/plugins/dynatree/ui.dynatree.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / color picker -->
    <link href='/zijingwang/assets/stylesheets/plugins/bootstrap_colorpicker/bootstrap-colorpicker.css' media='all'
          rel='stylesheet' type='text/css'/>
    <!-- / datetime picker -->
    <link href='/zijingwang/assets/stylesheets/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css' media='all'
          rel='stylesheet' type='text/css'/>
    <!-- / daterange picker) -->
    <link href='/zijingwang/assets/stylesheets/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css' media='all'
          rel='stylesheet' type='text/css'/>
    <!-- / flags (country flags) -->
    <link href='/zijingwang/assets/stylesheets/plugins/flags/flags.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / slider nav (address book) -->
    <link href='/zijingwang/assets/stylesheets/plugins/slider_nav/slidernav.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / fuelux (wizard) -->
    <link href='/zijingwang/assets/stylesheets/plugins/fuelux/wizard.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / flatty theme -->
    <link href='/zijingwang/assets/stylesheets/light-theme.css' id='color-settings-body-color' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / demo -->
    <link href='/zijingwang/assets/stylesheets/demo.css' media='all' rel='stylesheet' type='text/css'/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body class='contrast-blue '>
<header>
    <%@include file="common/header.jsp"%>
</header>
<div id='wrapper'>
<div id='main-nav-bg'></div>
<%@include file="common/leftList.jsp"%>


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
                                <i class='icon-edit'></i>
                                <span>影厅详细信息</span>
                            </h1>
                        </div>
                    </div>
                </div>
                <!--第一部分-->

                <!--页面内标签-->
                <div class='row-fluid'>
                    <div class="tab-pane active" id="retab1">
                        <form accept-charset="UTF-8" action="/zijingwang/hall/${hall.hallId}/hallDetailUpdate"
                              class="form form-horizontal" method="post" style="margin-bottom: 0;"/>
                        <div style="margin:0;padding:0;display:inline">
                            <input name="utf8" type="hidden" value="&#x2713;"/>
                            <input name="authenticity_token" type="hidden"
                                   value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/>
                        </div>
                        <div class='control-group'>
                            <label class='control-label' for='hallName'>影厅名称</label>

                            <div class='controls'>
                                <input id='hallName' type='text' name="hallName" value="${hall.hallName}"
                                       readonly="readonly"/><!--修改name与数据库英文名称统一-->
                            </div>
                        </div>
                        <hr class='hr-normal'/>
                        <div class='control-group'>
                            <label class='control-label' for='cinemaName'>所属影院</label>

                            <div class='controls'>
                                <input id='cinemaName' type='text' name="cinemaName" value="${hall.cinema.cinemaName}"
                                       readonly="readonly"/>
                            </div>

                        </div>

                        <!--保存重置-->
                        <div class='form-actions'>
                            <button class='btn btn-primary' type='submit'>
                                <i class='icon-save'></i>
                                修改
                            </button>
                            <button class='btn' type='button' onclick="javascript:history.back(-1);">返回</button>
                        </div>
                        <!--保存重置-->
                        </form>
                    </div>
                </div>
                <!--页面内标签-->
                <hr class='hr-double'/>


            </div>
        </div>
    </div>
</section>
<!--核心显示区-->
</div>
<!-- / jquery -->
<script src='/zijingwang/assets/javascripts/jquery/jquery.min.js' type='text/javascript'></script>
<!-- / jquery mobile events (for touch and slide) -->
<script src='/zijingwang/assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js' type='text/javascript'></script>
<!-- / jquery migrate (for compatibility with new jquery) -->
<script src='/zijingwang/assets/javascripts/jquery/jquery-migrate.min.js' type='text/javascript'></script>
<!-- / jquery ui -->
<script src='/zijingwang/assets/javascripts/jquery_ui/jquery-ui.min.js' type='text/javascript'></script>
<!-- / bootstrap -->
<script src='/zijingwang/assets/javascripts/bootstrap/bootstrap.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/flot/excanvas.js' type='text/javascript'></script>
<!-- / sparklines -->
<script src='/zijingwang/assets/javascripts/plugins/sparklines/jquery.sparkline.min.js' type='text/javascript'></script>
<!-- / flot charts -->
<script src='/zijingwang/assets/javascripts/plugins/flot/flot.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/flot/flot.resize.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/flot/flot.pie.js' type='text/javascript'></script>
<!-- / bootstrap switch -->
<script src='/zijingwang/assets/javascripts/plugins/bootstrap_switch/bootstrapSwitch.min.js' type='text/javascript'></script>
<!-- / fullcalendar -->
<script src='/zijingwang/assets/javascripts/plugins/fullcalendar/fullcalendar.min.js' type='text/javascript'></script>
<!-- / datatables -->
<script src='/zijingwang/assets/javascripts/plugins/datatables/jquery.dataTables.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js' type='text/javascript'></script>
<!-- / wysihtml5 -->
<script src='/zijingwang/assets/javascripts/plugins/common/wysihtml5.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/common/bootstrap-wysihtml5.js' type='text/javascript'></script>
<!-- / select2 -->
<script src='/zijingwang/assets/javascripts/plugins/select2/select2.js' type='text/javascript'></script>
<!-- / color picker -->
<script src='/zijingwang/assets/javascripts/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js'
        type='text/javascript'></script>
<!-- / mention -->
<script src='/zijingwang/assets/javascripts/plugins/mention/mention.min.js' type='text/javascript'></script>
<!-- / input mask -->
<script src='/zijingwang/assets/javascripts/plugins/input_mask/bootstrap-inputmask.min.js' type='text/javascript'></script>
<!-- / fileinput -->
<script src='/zijingwang/assets/javascripts/plugins/fileinput/bootstrap-fileinput.js' type='text/javascript'></script>
<!-- / modernizr -->
<script src='/zijingwang/assets/javascripts/plugins/modernizr/modernizr.min.js' type='text/javascript'></script>
<!-- / retina -->
<script src='/zijingwang/assets/javascripts/plugins/retina/retina.js' type='text/javascript'></script>
<!-- / fileupload -->
<script src='/zijingwang/assets/javascripts/plugins/fileupload/tmpl.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/fileupload/load-image.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/fileupload/canvas-to-blob.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/fileupload/jquery.iframe-transport.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/fileupload/jquery.fileupload.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/fileupload/jquery.fileupload-fp.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/fileupload/jquery.fileupload-ui.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/fileupload/jquery.fileupload-init.js' type='text/javascript'></script>
<!-- / timeago -->
<script src='/zijingwang/assets/javascripts/plugins/timeago/jquery.timeago.js' type='text/javascript'></script>
<!-- / slimscroll -->
<script src='/zijingwang/assets/javascripts/plugins/slimscroll/jquery.slimscroll.min.js' type='text/javascript'></script>
<!-- / autosize (for textareas) -->
<script src='/zijingwang/assets/javascripts/plugins/autosize/jquery.autosize-min.js' type='text/javascript'></script>
<!-- / charCount -->
<script src='/zijingwang/assets/javascripts/plugins/charCount/charCount.js' type='text/javascript'></script>
<!-- / validate -->
<script src='/zijingwang/assets/javascripts/plugins/validate/jquery.validate.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/validate/additional-methods.js' type='text/javascript'></script>
<!-- / naked password -->
<script src='/zijingwang/assets/javascripts/plugins/naked_password/naked_password-0.2.4.min.js' type='text/javascript'></script>
<!-- / nestable -->
<script src='/zijingwang/assets/javascripts/plugins/nestable/jquery.nestable.js' type='text/javascript'></script>
<!-- / tabdrop -->
<script src='/zijingwang/assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js' type='text/javascript'></script>
<!-- / jgrowl -->
<script src='/zijingwang/assets/javascripts/plugins/jgrowl/jquery.jgrowl.min.js' type='text/javascript'></script>
<!-- / bootbox -->
<script src='/zijingwang/assets/javascripts/plugins/bootbox/bootbox.min.js' type='text/javascript'></script>
<!-- / inplace editing -->
<script src='/zijingwang/assets/javascripts/plugins/xeditable/bootstrap-editable.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/xeditable/wysihtml5.js' type='text/javascript'></script>
<!-- / ckeditor -->
<script src='/zijingwang/assets/javascripts/plugins/ckeditor/ckeditor.js' type='text/javascript'></script>
<!-- / filetrees -->
<script src='/zijingwang/assets/javascripts/plugins/dynatree/jquery.dynatree.min.js' type='text/javascript'></script>
<!-- / datetime picker -->
<script src='/zijingwang/assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js'
        type='text/javascript'></script>
<!-- / daterange picker -->
<script src='/zijingwang/assets/javascripts/plugins/bootstrap_daterangepicker/moment.min.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.js'
        type='text/javascript'></script>
<!-- / max length -->
<script src='/zijingwang/assets/javascripts/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js'
        type='text/javascript'></script>
<!-- / dropdown hover -->
<script src='/zijingwang/assets/javascripts/plugins/bootstrap_hover_dropdown/twitter-bootstrap-hover-dropdown.min.js'
        type='text/javascript'></script>
<!-- / slider nav (address book) -->
<script src='/zijingwang/assets/javascripts/plugins/slider_nav/slidernav-min.js' type='text/javascript'></script>
<!-- / fuelux -->
<script src='/zijingwang/assets/javascripts/plugins/fuelux/wizard.js' type='text/javascript'></script>
<!-- / flatty theme -->
<script src='/zijingwang/assets/javascripts/nav.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/tables.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/theme.js' type='text/javascript'></script>
<!-- / demo -->
<script src='/zijingwang/assets/javascripts/demo/jquery.mockjax.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/demo/inplace_editing.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/demo/charts.js' type='text/javascript'></script>
<script src='/zijingwang/assets/javascripts/demo/demo.js' type='text/javascript'></script>
<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>

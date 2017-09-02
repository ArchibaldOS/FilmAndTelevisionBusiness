
$(document).ready(function(){

/*----------------------------------top jq-------------------------------*/
	$("#topnav").hover(function(){                                 //首页图标hover事件
		$(this).css("background-position","-315px -155px");
		$(this).append($("div.topindex"));
		$(".topindex").css("display","block");
		},function(){
			$(this).css("background-position","-133px -155px");
			$(".topindex").css("display","none");
	});

	$(document).click(function(e){                               //点击空白处使弹出框消失
		var ev = e||window.event;
		var ob = $(ev.srcElement||ev.target);                              
		if(!(ob.parents().is(".searchall"))){                       
			$(".allclassify").css("display","none");
		}

		if(!(ob.parents().is("#login")) && $(".loginfo").css("display") == "block"){
			$(".login").css({color:"#fff",background:"transparent"});
			$(".login").children("i").css({borderColor:"#fff",background:"url(assets/img/topbar_03.png) 0 2px no-repeat"});
			$(".blank1").css("display","none");
			$(".loginfo").css("display","none");
		};

		if(!(ob.parents().is(".location")) && $(".locate").css("display") == "block"||ob.is(".locate .locate-0 a")){
			$(".location").css({color:"#fff",background:"transparent"});
			$("#location").css({color:"#fff"});
			$(".location").children("i").css({borderColor:"#fff",background:"url(assets/img/topbar_02.png) no-repeat"});
			$(".blank2").css("display","none");
			$(".locate").css("display","none");
		}         
	});

	$(".searchall").click(function(e) {                             //点击“全部分类”；
		var ev = e||window.event;
		ev.preventDefault();
		var ob = $(ev.srcElement||ev.target);
		var isallclassify = ob.parents().is(".allclassify");
		if($(".allclassify").css("display") == "block" && !isallclassify){
			$(".allclassify").css("display","none");
		}else if($(".allclassify").css("display") == "none" && !isallclassify){
			$(".allclassify").css("display","block");
		}
	});

	$("#sear").on({                                                //搜索框获得焦点和失去焦点
		focus:function(){
			if($(this).val() == "搜索电影、影人、影院、商品"||$(this).val() == "电影、电视剧"||
			   $(this).val() == "演员、导演、制片人"||$(this).val() == "本地影院"||$(this).val() == "按名称、电影、品牌等搜索商品"){
				$(this).val("");
			};
		},
		blur:function(){
			if($("#sear").val() == ""){
				var val = $(".searchalla").html();
				switch(val){
					case "全部": $("#sear").val("搜索电影、影人、影院、商品");break;
					case "电影": $("#sear").val("电影、电视剧");break;
					case "影人": $("#sear").val("演员、导演、制片人");break;
					case "影院": $("#sear").val("本地影院");break;
					case "商品": $("#sear").val("按名称、电影、品牌等搜索商品");break;
					default:break;
				}
			}
		}
	});

	$(".allclassify").find("li").click(function(e){                //点击分类中的选项
		var i = $(this).index();
		$(".allclassify").css("display","none");
		if (i == 0) {
			$("#searchall").children(".searchalla").html("全部");
			$("#sear").val("搜索电影、影人、影院、商品");}
		else if (i == 1) {
			$("#searchall").children(".searchalla").html("电影");
			$("#sear").val("电影、电视剧");}
		else if (i == 2) {
			$("#searchall").children(".searchalla").html("影人");
			$("#sear").val("演员、导演、制片人");}
		else if (i == 3) {
			$("#searchall").children(".searchalla").html("影院");
			$("#sear").val("本地影院");}
		else if (i == 4) {
			$("#searchall").children(".searchalla").html("商品");
			$("#sear").val("按名称、电影、品牌等搜索商品");}
	});

	$(".location").click(function(e){                            //点击我的位置
		var ev = e||window.event;
		ev.preventDefault();
		var ob = $(ev.srcElement||ev.target);
		var islocate = ob.parents().is(".locate");
		if($(".locate").css("display") == "block"&&!islocate){
			$(".location").css({color:"#fff",background:"transparent"});
			$("#location").css({color:"#fff"});
			$(".location").children("i").css({borderColor:"#fff",background:"url(assets/img/topbar_02.png) no-repeat"});
			$(".blank2").css("display","none");
			$(".locate").css("display","none");
		}else if($(".locate").css("display") == "none"){
			$(".location").css({color:"#333",background:"#fff"});
			$("#location").css({color:"#333"});
			$(".location").children("i").css({borderColor:"#eee",background:"url(assets/img/topbar.png) -268px -158px no-repeat"});
			$(".blank2").css("display","block");
			$(".locate").css("display","block");
		}
	});

	$(".location .locate ul li").click(function(){                   //选择我的位置
		if ($(this).attr("class") !== "cur") {
			$(this).parent().children("li").attr("class","");
			$(this).attr("class","cur");
			$(".locate-0").css("display","none");
			var ind = $(".location .locate ul li").index(this);
			$(".locate-0").eq(ind).css("display","block");
		}
	});

	$(".locate .locate-0 a").click(function(e){                      //具体选中某个位置
		e.preventDefault();
		var ht = $(this).html();
		$("#location").html(ht);
	});

	$("#login").click(function(e){                                  //点击登录
		var ev = e||window.event;
		ev.preventDefault();
		var ob = $(ev.srcElement||ev.target);
		var isloginfo = ob.parents().is("#loginfo");
		if($(".loginfo").css("display") == "block"&&!isloginfo){
			$(".login").css({color:"#fff",background:"transparent"});
			$(".login").children("i").css({borderColor:"#fff",background:"url(assets/img/topbar_03.png) 0 2px no-repeat"});
			$(".blank1").css("display","none");
			$(".loginfo").css("display","none");
		}else if($(".loginfo").css("display") == "none"){
			$(".login").css({color:"#333",background:"#fff"});
			$(".login").children("i").css({borderColor:"#eee",background:"url(assets/img/topbar.png) -302px -105px no-repeat"});
			$(".blank1").css("display","block");
			$(".loginfo").css("display","block");
		}
	});

	$(".login-3-1").click(function(){                              //点击记住密码
		if ($(".login-3-1").css("background-position")=="-172px -156px"){
			$(".login-3-1").css("background-position","-200px -156px");
		}else if($(".login-3-1").css("background-position")=="-200px -156px"){
			$(".login-3-1").css("background-position","-172px -156px");
		}
	})

});

$(window).unload(function(){                                       //离开或刷新事件
	$(".searchalla").html("全部");
	$("#sear").val("搜索电影、影人、影院、商品");
});

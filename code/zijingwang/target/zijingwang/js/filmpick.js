$(document).ready(function(){

	$(".t1-flist .flist-ul li .fli-selected").parent().css({width:"182px",height:"242px",marginTop:"4px"}); //被选中的影片li加宽高

	$("#datepick li").click(function(){                                //点击影院服务/活动信息等选项
		if($(this).attr("class") != "dtp"){
			$(this).parent().children("li").removeClass("dtp");
			$(this).attr("class","dtp");
			var id = $(this).attr("data-id");
			$(".ftabs").removeClass("show-li");
			$("#"+id).addClass("show-li");
		}
	});

	$(".t1-flist .flist-ul li").click(function(){                       //点击影片
		var idx = $(this).index();
		if($(this).children("img").hasClass("fli-selected")){
			return;
		}else{
			$(".t1-flist .flist-ul li").each(function(){
				if($(this).children("img").hasClass("fli-selected") && $(this).css("width") != "0px"){
					$(this).css({width:"152px",height:"202px",marginTop:"24px"});
				}else if($(this).children("img").hasClass("fli-selected") && $(this).css("width") == "0px"){
					$(this).css({height:"202px",marginTop:"24px"});
				}
			})
			$(this).siblings("li").children("img").removeClass("fli-selected");
			$(this).children("img").addClass("fli-selected");
			$(this).css({width:"182px",height:"242px",marginTop:"4px"});
			$(".schedule").removeClass("show-li");
			$("#flist1-"+idx).addClass("show-li");
		}
	})

	$("#prevfilm").hide();                                    //隐藏查看前面影片的按钮
	var hidx = 0;											  //设置一个全局变量，标记影片组，第一组为0，第二组1，第三组2；
	$("#nextfilm").click(function(){                          //点击查看后续影片
        if(hidx == 0){
        	for(var i = 0;i < 4;i++){
				$(".t1-flist .flist-ul li").eq(i).animate({width:"0",marginRight:"0"},500);
			}
			for(var i = 6;i < 10;i++){
				if($(".t1-flist .flist-ul li").eq(i).children("img").hasClass("fli-selected")){
					$(".t1-flist .flist-ul li").eq(i).children("img").parent().animate({width:"182px",marginRight:"9px"},500);
				}else{
					$(".t1-flist .flist-ul li").eq(i).animate({width:"152px",marginRight:"9px"},500);
				}
			}
		}else if(hidx == 1){
			for(var i = 4;i < 8;i++){
				$(".t1-flist .flist-ul li").eq(i).animate({width:"0",marginRight:"0"},500);
			}
			for(var i = 10;i < 13;i++){
				if($(".t1-flist .flist-ul li").eq(i).children("img").hasClass("fli-selected")){
					$(".t1-flist .flist-ul li").eq(i).children("img").parent().animate({width:"182px",marginRight:"9px"},500);
				}else{
					$(".t1-flist .flist-ul li").eq(i).animate({width:"152px",marginRight:"9px"},500);
				}
			}
			$("#nextfilm").hide();
		}
		$("#prevfilm").show();
		hidx++;
	});

	$("#prevfilm").click(function(){                              //点击查看前面的影片
		if(hidx == 1){
        	for(var i = 3;i >= 0;i--){
				if($(".t1-flist .flist-ul li").eq(i).children("img").hasClass("fli-selected")){
					$(".t1-flist .flist-ul li").eq(i).children("img").parent().animate({width:"182px",marginRight:"9px"},500);
				}else{
					$(".t1-flist .flist-ul li").eq(i).animate({width:"152px",marginRight:"9px"},500);
				}
			}
			for(var i = 6;i < 10;i++){
				$(".t1-flist .flist-ul li").eq(i).animate({width:"0",marginRight:"0"},500);
			}
			$("#prevfilm").hide();
		}else if(hidx == 2){
			for(var i = 7;i > 3;i--){
				if($(".t1-flist .flist-ul li").eq(i).children("img").hasClass("fli-selected")){
					$(".t1-flist .flist-ul li").eq(i).children("img").parent().animate({width:"182px",marginRight:"9px"},500);
				}else{
					$(".t1-flist .flist-ul li").eq(i).animate({width:"152px",marginRight:"9px"},500);
				}
			}
			for(var i = 10;i < 13;i++){
				$(".t1-flist .flist-ul li").eq(i).animate({width:"0",marginRight:"0"},500);
			}
		}
		$("#nextfilm").show();
		hidx--;
	});


});
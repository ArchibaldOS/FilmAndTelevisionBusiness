
$(document).ready(function(){

	$("#datepick li").click(function(){                               //点击日期选项
		if($(this).attr("class") != "dtp"){
			$(this).parent().children("li").removeClass("dtp");
			$(this).attr("class","dtp");
		}
	});
	$("#prevdays .prev").hide();
	$("#nextdays").click(function(){                                  //点击查看下一组日期
		if($("#datepick li").eq(0).css("width") !== "0"){
			for(var i = 0;i < 4;i++){
				$("#datepick li").eq(i).animate({width:"0"},500);
			}
			$("#prevdays .prev").show();
			$(this).hide();
		}
	});

	$("#prevdays .prev").click(function(){                            //点击查看上一组日期
		if($("#datepick li").eq(0).css("width") !== "0"){
			for(var i = 4;i >= 0;i--){
				$("#datepick li").eq(i).animate({width:"160px"},500);
			}
			$("#nextdays").show();
			$(this).hide();
		}
	});

	$(".cinamea").hover(function(){                                    //鼠标放在影院名上之后显示“我常去标志”
 		$(this).children(".alwgo").css("display","inline-block");
 	},function(){
 		$(this).children(".alwgo").css("display","none");
 	})

});


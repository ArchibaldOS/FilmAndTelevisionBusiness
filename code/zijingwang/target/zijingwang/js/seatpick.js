$(document).ready(function(){
	$(".bodytop").css("background","none");
	$(".bodywrap").css("background","url(assets/img/1.jpg)");
	$("#seats li .blank0,#seats li .des-3").css("cursor","auto");
	var form = $('#myForm');
	$("#seats li a:not(.des-3)").click(function(e){                                    //选座
		e.preventDefault();
		
		var seat = $( this );
		var no = seat.attr('href');
		if( seat.hasClass('des-2') ){
			form.children('input[value=' + no + ']').remove();
			seat.removeClass('des-2');
		} else {
			$('<input type="hidden" name="seat"/>').val( no ).appendTo( form );
			seat.addClass('des-2');
		}
	});

})
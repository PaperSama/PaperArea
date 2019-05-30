layui.use([ 'layer', 'form' ], function() {
	var layer = layui.layer, form = layui.form;

	layer.msg('Hello World');
});

$(function(){
	var num = 0;
	setInterval(function(){
		if(num == -200){
			num = 0;
		}
		num -= 4;
		$("body").css("background-position", num + "px " + num + "px");
	},50);
})
/*
$(document).scroll(function(){
	var scrollHigh = $(document).scrollTop();
	$("body").css("background-position" , "0px " + scrollHigh * -0.5 +"px");
});
*/
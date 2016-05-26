$(function() {
	var $key=0;
	$(".right").click(function(event) {
		autoplay();
	});
	$(".left").click(function(event) {

		$(".box ul li").eq($key).stop().fadeOut(800);
		$key--;
		/*if($key<0){
			$key=4;
		}*/
		$key=$key%($(".box ul li").length);
		$(".box ul li").eq($key).stop().fadeIn(800);
		$(".box ol li").eq($key).addClass('current').siblings().removeClass('current');
	});
	var timer=setInterval(autoplay, 2000);
	function autoplay(){
		$(".box ul li").eq($key).stop().fadeOut(800);
		$key++;
		/*if($key>4){
			$key=0;
		}*/
		$key=$key%($(".box ul li").length);
		$(".box ul li").eq($key).stop().fadeIn(800);
		$(".box ol li").eq($key).addClass('current').siblings().removeClass('current');
	}
	$(".box").hover(function() {
		$(".left,.right").show();
		clearInterval(timer);
		timer=null;
	}, function() {
		$(".left,.right").hide();
		clearInterval(timer);
		timer=setInterval(autoplay, 2000);
	});

	$(".box ol li").click(function(event) {
		$(".box ul li").eq($key).fadeOut(800);
		$key=$(this).index();
		$(".box ul li").eq($key).fadeIn(800);		
		$(this).addClass('current').siblings().removeClass('current');
	});
});
$(".lt_aside_nav dl dt").on('click', function(event) {
    $(this).siblings('dd').stop().slideToggle(400);
});
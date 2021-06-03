$(function () {
    $(window).on('scroll', function () {
        if ( $(window).scrollTop() > 10 ) {
            $('.navbar').addClass('active');
        } else {
            $('.navbar').removeClass('active');
        }
    });
});
$(function() {
    $("ul li a").mouseover(function(){
        $("ul li a").css("opacity", "0.3");
        $(this).css("opacity", "1");
    });
    $("ul li a").mouseout(function(){
        $("ul li a").css("opacity", "1");
    });

});

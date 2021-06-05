$(function () {
    $(window).on('scroll', function () {
        if ( $(window).scrollTop() > 1 ) {
            $('.navbar').addClass('active');
            $('.bg-image').addClass('scrolled');
            //$('.span').addClass('scrolled');
        } else {
            $('.navbar').removeClass('active');
            $('.bg-image').removeClass('scrolled');
            //$('.span').removeClass('scrolled');
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

$(function(){
    $(window).on('scroll', function(){
        if($(this).scrollTop() > 1){
        } else {
        }
    })
})
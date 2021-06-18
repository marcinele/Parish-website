$(function () {
    $(window).on('scroll', function () {
        if ( $(window).scrollTop() > 0 ) {
            $('.navbar').addClass('active');
            $('.bg-image').addClass('scrolled');
            $('.announcements').addClass('scrolled');
            //$('.span').addClass('scrolled');
        } else {
            $('.navbar').removeClass('active');
            $('.bg-image').removeClass('scrolled');
            $('.announcements').removeClass('scrolled');
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

$(document).ready(function(){

    $('.input').focus(function(){
        $(this).parent().find(".label-txt").addClass('label-active');
    });

    $(".input").focusout(function(){
        if ($(this).val() == '') {
            $(this).parent().find(".label-txt").removeClass('label-active');
        };
    });

});

document.getElementById("logoutSubmit").submit();
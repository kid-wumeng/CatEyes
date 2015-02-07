$(document).ready(function(){
    
    var share = $("#share");
    share.css("width", $(window).width());
    
    
    $(share).hover(
        function(){
            h1 = $(this).children("h1");
            div = $(this).children(".passit_barDiv");
            $(h1).stop(true).fadeOut(200, function(){
                $(div).stop(true).fadeIn(200);
            });
        },
        function(){
            h1 = $(this).children("h1");
            div = $(this).children(".passit_barDiv");
            $(div).stop(true).fadeOut(200, function(){
                $(h1).stop(true).fadeIn(200);
            });
        }
    );
        
});
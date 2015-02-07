$(document).ready(function(){

    var w;
    var h1Width = 40;
    var h1Width_radio = 3;
    var logoMarginLeft;
    var catsMarginRigth;
    
    initNav();
    
    $("#nav #aboutUs").hover(
        function(){
            var h1 = $(this).children("h1");            
            var div = $(this).children("div");
            var p = div.children("p");
            h1.css("text-shadow", "1px 1px 1px #AA87B8");
            p.css("text-shadow", "1px 1px 1px #5D0C7B");
            div.stop(true,true).show(400);
        },
        function(){
            var h1 = $(this).children("h1");            
            var div = $(this).children("div");            
            var p = div.children("p");
            div.stop(true,true).hide(400);
            p.css("text-shadow", "none");
            h1.css("text-shadow", "none");
        }
    );
    
    $("#nav #cats li").hover(
        function(){
            h1 = $(this).children("h1");
            div = $(this).children("div");
            var color = h1.css("color");
            h1.css("color", "#fff");
            h1.css("background-color", color);
            h1.stop().animate(
                {
                    width: h1Width * h1Width_radio
                },
                300
            )
            $(this).parent("#cats").stop().animate(
                {
                    marginRight: catsMarginRigth - (h1Width * h1Width_radio - h1Width) / 2
                },
                300
            )
            div.show();    
        },
        function(){
            h1 = $(this).children("h1");
            div = $(this).children("div");
            var color = h1.css("background-color");
            h1.css("color", color);
            h1.css("background", "none");
            div.hide();    
            h1.stop().animate(
                {
                    width: h1Width
                },
                300
            )
            $(this).parent("#cats").stop().animate(
                {
                    marginRight: catsMarginRigth
                },
                300
            )
        }
    );
        
    $("ul#cats li div a").click(function(){
        var action = $(this).attr("href");
        var catId = $(this).attr("id");
        $("#nav form#go").attr("action", action);
        $("#nav form#go #catId").attr("value", catId);
        var picNum = parseInt($(window).width() * $(window).height() / 20000);
        $("#nav form#go #picNum").val(picNum);
        $("#nav form#go").submit();
        return false;
    });

    /* 调整窗口大小后，重新布置导航 */
    $(window).resize(function() {
        initNav();  /* 初始化导航 */
    });
    
    function initNav(){
        w = $(window).width();
        logoMarginLeft = w * 0.15;
        catsMarginRigth = w * 0.15
        $("#nav #logo").css("margin-left", logoMarginLeft);
        $("#nav #cats").css("margin-right", catsMarginRigth);
    }


});
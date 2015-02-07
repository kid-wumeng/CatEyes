$(document).ready(function(){
    
    var picBorder = 15;  /* 图片 边宽 */
    var nav_h = 38;      /* 导航栏 高度 */
    var share_h = 40;    /* 分享栏 高度 */

    var w = $(window).width();   /* 浏览器窗口 宽度 */
    var h = $(window).height();  /* 浏览器窗口 高度 */
    var x;
    var y;
    var left;
    var right;
    
    var pic = $("#pic");            /* 图片div */
    var img = pic.children("img");  /* 图片 */
    
    setTimeout(initPic, 50);  /* 初始化图片 */
    
    
    /* 函数名：initPic
     * 功能：初始化图片
     */
    function initPic() {
        img.css("max-width", w - 100);                                       /* 最大宽度 */
        img.css("max-height", (h - nav_h - share_h - picBorder * 2) * 0.9);  /* 最大高度 */
        var top = (h - img.height() - picBorder * 2 - nav_h - share_h) / 2 + 30; 
        pic.css("margin-top", (top > nav_h) ? top : nav_h);  /* 上外边距 */
        img.fadeIn(400);  /* 显示图片 */
    }
    
    
    /* 鼠标指针在图片div上悬浮 */
    pic.bind("mouseover mousemove", function(e){ 
        x = e.originalEvent.layerX - pic.width() / 2;  /* 鼠标 x坐标 */
        if(x <= 0) {
            pic.css("cursor", "url(images/prevPic.png), auto");  /* 指针 上一页图标 */
        }
        else if(x > 0) {
            pic.css("cursor", "url(images/nextPic.png), auto");  /* 指针 下一页图标 */
        }
    });
    
    
    /* 鼠标指针在图片上悬浮 */
    img.bind("mouseover mousemove", function(e){
        img.unbind("click");  /* 解除之前的点击事件 */
        x = e.originalEvent.layerX;                       /* 指针 x坐标 */
        y = e.originalEvent.layerY - img.height() * 0.7;  /* 指针 y坐标 */
        left = (pic.width() - img.width()) / 2 + img.width() * 0.25;   /* 左界 */
        right = (pic.width() - img.width()) / 2 + img.width() * 0.75;  /* 右界 */
        /* 如果指针在放大界内 */
        if(y <= 0 && x > left && x < right) {  
            img.css("cursor", "url(images/toBig.png), auto");  /* 指针 放大图标 */
            img.click(function(){  
                y = e.originalEvent.layerY - img.height() * 0.7;
                if(y <= 0) {
                    window.open($("#pic img").attr("src"));  /* 点击则打开图片（新窗口） */
                    return false;
                }
            });
        }
        /* 如果指针在下载界内 */
        else if(y > 0 && x > left && x < right) {
            img.css("cursor", "url(images/download.png), auto");  /* 指针 下载图标 */
            img.click(function(){
                y = e.originalEvent.layerY - img.height() * 0.7;
                if(y > 0) {
                    location.href = $("#download").attr("href");  /* 点击则打开下载框 */
                    return false;
                }
            });
        }
        /* 如果指针在切换界内 */
        else {
            x = e.originalEvent.layerX - pic.width() / 2;  /* 指针 x坐标 */
            if(x <= 0) {
                img.css("cursor", "url(images/prevPic.png), auto");  /* 指针 上一页图标 */
            }
            else if(x > 0) {
                img.css("cursor", "url(images/nextPic.png), auto");  /* 指针 下一页图标 */
            }
        }
    });
    
    
    /* 切换图片 */
    pic.click(function(e){
        x = e.originalEvent.layerX - pic.width() / 2;  /* 指针 x坐标 */
        img.fadeOut(200,function(){  /* 隐藏图片 */
            if(x <= 0) {
                location.href = $("#nextPic").attr("href");  /* 切换到上一页 */
            }
            else if(x > 0) {
                location.href = $("#prevPic").attr("href");  /* 切换到下一页 */
            }
        });
    });
    
});

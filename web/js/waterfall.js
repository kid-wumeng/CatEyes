$(document).ready(function(){
    
    var colNum;                                  /* 列数 */
    var colHeight = new Array(0,0,0,0,0,0,0,0);  /* 列高（对应列编号0~7） */
    var w = $(window).width();  /* 浏览器窗口 宽度 */
    var mainBorder = 50;   /* 主体边宽（距窗口两侧宽度） */
    var picWidth = 200;    /* 图片宽度 */
    var picBorder = 10;    /* 图片边宽 */
    var picSpace = 5;      /* 图片间距 */
    var img_ratio = 1.35;  /* 图片放大率 */


    initWaterfall();  /* 初始化瀑布流 */
    
    
    /* 下拉条到一定距离后，显示“返回顶部”按钮
     * 下拉条到底后，加载更多图片 
     */
    $(window).scroll(function(){
        if($(window).scrollTop() > 500) {
            $("#toTop").fadeIn(700);   /* 显示按钮 */
        }
        else {
            $("#toTop").fadeOut(700);  /* 隐藏按钮 */
        }
        if($(document).height() - $(this).scrollTop() - $(this).height() < 1) {
            loadMorePics();  /* 加载更多图片 */
        }  
    }); 
    
    
    /* 调整窗口大小后，重新摆放图片 */
    $(window).resize(function() {
        initWaterfall();  /* 初始化瀑布流 */
    });
    
    
    /* 鼠标进入图片时，放大图片 */
    $("#main a img").live("mouseenter", function(){
        var img = $(this);  /* 图片 */
        img.stop(true,true).animate(
            {
                width : picWidth * img_ratio,                                /* 宽度 */
                height : img.height() * img_ratio,                           /* 高度 */
                marginLeft : -(picWidth * img_ratio - picWidth) / 2,         /* 左偏移量 */
                marginTop : -(img.height() * img_ratio - img.height()) / 2,  /* 上偏移量 */
            },
            300  /* 动画时间 */
        );
    });
    
    
    /* 鼠标离开图片时，恢复图片 */
    $("#main a img").live("mouseleave", function(){
        var a = $(this).parent("a");  /* 图片外壳 */
        var img = $(this);            /* 图片 */
        img.stop(true,true).animate(
            {
                width : picWidth,     /* 宽度 */
                height : a.height(),  /* 高度 */
                marginLeft : 0,       /* 左偏移量 */
                marginTop : 0         /* 上偏移量 */
            },
            300  /* 动画时间 */
        );
    });
    
    
    /* 返回顶部 */
    $("#toTop").click(function(){
        var time = $(window).scrollTop() * 0.2;  /* 返回过程耗时 */
        $("body,html").animate(
            {
                scrollTop : 0  /* 滚动条至最顶端 */
            },
            time  
        );
        return false;
    });
    
    
    /* 函数名：initWaterfall
     * 功能：初始化瀑布流
     * 备注：
     */
    function initWaterfall() {
        colHeight = new Array(0,0,0,0,0,0,0,0);  /* 初始化列高 */
        colNum = parseInt( (w - mainBorder*2) / (picWidth + picBorder*2 + picSpace) );  /* 计算列数 */
        $("#wrap").css("width", colNum * (picWidth + picBorder*2 + picSpace) + picSpace + 30);  /* 外壳 宽度 */
        $("#main a").each(function(){  /* 遍历 */
            var a = $(this);              /* 图片外壳 */
            var img = a.children("img");  /* 图片 */
            a.height(img.height());       /* 外壳与图片等高 */
            var minColNo = getMinColNo();            /* 最短列 编号 */
            var minColHeight = colHeight[minColNo];  /* 最短列 高度 */
            $(this).stop().animate(  /* 图片进入瀑布流 */
                {
                    left: minColNo * (picWidth + picBorder*2 + picSpace),  /* 左偏移量 */
                    top: minColHeight                                      /* 上偏移量 */
                },
                1000  /* 动画时间 */
            );
            colHeight[minColNo] += (parseInt(img.attr("height")) + picBorder*2 + picSpace);  /* 增加列高 */
        });
    }
    
    
    /* 函数名：loadMorePics
     * 功能：加载更多图片
     * 备注：
     */
    function loadMorePics() {
        var catId = $("#main").attr("catId");  /* 分类 */
        var minPicPublishDateTime = $("#main").attr("minPicPublishDateTime");  /* 最小发布时间 */
        $.post(
            "More",
            {
                "pic.catId" : catId,
                "pic.picPublishDateTime" : minPicPublishDateTime,
                "pic.picNum" : 10,
                "more" : true
            },
            function(data) {
                minPicPublishDateTime = $(data).find("minPicPublishDateTime").text();
                $("#main").attr("minPicPublishDateTime", minPicPublishDateTime);
                $(data).find("pic").each(function(){
                    var id = $(this).attr("id");
                    var width = $(this).attr("width");
                    var height = $(this).attr("height");
                    var pic = "<a href='pic?id=" + id + "' target='_blank'><img height='" + height / (width / picWidth) + "' src='pics/" + id + ".jpg' /></a>";
                    $("#morePics").append($(pic));
                });
                $("#morePics a").each(function(){
                    $("#main").append(this);
                    var a = $(this);
                    var img = a.children("img");
                    a.height(img.height());
                    var minColNo = getMinColNo();
                    var minColHeight = colHeight[minColNo];
                    $(this).stop().animate(
                        {
                            left: minColNo * (picWidth + picBorder*2 + picSpace),
                            top: minColHeight
                        },
                        0
                    );
                    colHeight[minColNo] += (parseInt(img.attr("height")) + picBorder*2 + picSpace);
                });
            }
        );
    }


    /* 函数名：getMinColNo
     * 功能：获取最短列的编号
     * 返回值：最短列编号
     * 备注：如果最短列有多个，则返回编号小的。
     */
    function getMinColNo() {
        var minColNo = 0;
        var minColHeight = colHeight[0];
        for(var i=1; i<colNum; i++) {
            if(colHeight[i] < minColHeight) {
                minColNo = i;
                minColHeight = colHeight[i];                
            }
        }
        return minColNo;
    }
    
    
});
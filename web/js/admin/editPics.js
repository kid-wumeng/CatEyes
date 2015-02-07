$(document).ready(function(){
    var checkFlag = true;  /* 提交前是否检查数据 */
    
    
    /* 全局分类改变，子分类连锁 */
    $("#global .cat").change(function(){
        var option = $(this).val();  /* 分类id */
        $(".pic").each(function(){  /* 遍历 */  
            $(this).children(".cat").val(option);  /* 连锁 */
        });
    });
    

    /* 计算图片尺寸 */
    $("#countSize").click(function(){
        $(".pic").each(function(){  /* 遍历 */
            var img = new Image();
            img.src = $(this).children(".img").attr("src");
            $(this).children(".width").val(img.width);    /* 设置宽度 */
            $(this).children(".height").val(img.height);  /* 设置高度 */
            $(this).children(".size").text("宽：" + img.width + " 高：" + img.height);  /* 显示尺寸 */
        });
        return false;
    });
    

    /* 获取最后发布时间 */
    $("#max").click(function(){
        var catId = $("#global .cat").val();  /* 分类id（若id为空，则范围为全部图片） */
        $.post(
            "admin/maxPublishDateTime",
            {   /* 传参：分类 */
                "cat.catId" : catId  
            },
            function(data){
                var maxPublishDateTime = $(data).find("maxPublishDateTime").text();  /* 最后时间 */
                $("#global .dateTime").val(maxPublishDateTime);  /* 显示时间 */
            }
        )
        return false;
    });
    

    /* 设置图片发布时间 */
    $("#setTime").click(function(){
        var dateTime = $("#global .dateTime").val();  /* 时间 */
        var space = $("#global #space").val();        /* 间隔 */
        /* 检查时间、间隔合法性 */
        if(dateTime == "") {  
            alert("初始时间不能为空！");
            return false;
        }
        else if(space == "") {
            alert("间隔不能为空！");
            return false;
        }
        else if(space < 0 || space > 1440) {
            alert("间隔范围应为0~1440分钟！");
            return false;
        }
        else {
            /* 分解全局时间格式 */
            dateTime = dateTime.replace(/-| |:/g,",");
            var t = dateTime.split(",");
            dateTime = new Date(t[0], t[1], t[2], t[3], t[4], t[5]);
            $(".pic").each(function(){  /* 遍历，设置时间，按间隔递增 */
                $(this).children(".dateTime").val(dateTime.getFullYear() + "-" + dateTime.getMonth() + "-" + dateTime.getDate() + " " + dateTime.getHours() + ":" + dateTime.getMinutes() + ":" + dateTime.getSeconds());
                dateTime.setMinutes(dateTime.getMinutes() + parseInt(space));
            });
        }
    });
    
    /* 解除检查 */
    $("#relieve").click(function(){
        checkFlag = false;  
        if(checkFlag == false) 
            alert("解除成功！");
        else 
            alert("解除失败。");
        return false;
    });
    
    /* 确认提交 */
    $("#sure").click(function(){
        if(checkFlag == true) {  /* 如果checkFlag为true，则要检查数据 */
            var errorNum = 0;  /* 出错的图片数量 */
            $(".pic").each(function(){  /* 遍历 */
                var cat = $(this).children(".cat").val();            /* 分类 */
                var dateTime = $(this).children(".dateTime").val();  /* 时间 */
                var width = $(this).children(".width").val();        /* 宽度 */
                var height = $(this).children(".height").val();      /* 高度 */
                if(cat == "" || dateTime == "" || width == "" || width == "0" || height == "" || height == "0") {
                    errorNum++;  /* 计算出错量 */
                }
            });
            /* 显示提示，并停止提交 */
            if(errorNum != 0) {
                alert("有 " + errorNum + " 个图片存在问题（缺少 分类 或 尺寸 或 发布时间）！");
                return false;
            }
        }
    });

});
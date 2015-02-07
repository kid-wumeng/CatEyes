$(document).ready(function(){
    
    /* 清空当前文件栏 */
    $(".clear").click(function(){
        $(this).next("input[type=file]").val("");
        return false;
    });

});
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="keywords" content="猫眼石 cateyes.cc 高清图片 人物 动物" />
        <meta name="description" content="猫眼石 cateyes.cc 高清图片 人物 动物" />
        <title>猫眼石</title>
        <!-- 地址栏图标 -->
        <link rel="icon" type="image/x-icon" href="images/shortCutIcon.png" />
        <link rel="shortcut icon" href="images/shortCutIcon.png" >  
        <!-- CSS文件 -->
        <link type="text/css" rel="stylesheet" href="css/global.css" />
        <link type="text/css" rel="stylesheet" href="css/pic.css" />
        <!-- JS文件 -->
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/nav.js"></script>
        <script type="text/javascript" src="js/pic.js"></script>
        <script type="text/javascript" src="js/share.js"></script>
    </head>
    <body>
        <%-- 导航 --%>
        <s:action name="nav" executeResult="true"></s:action>
        <div id="pic">
            <a id="prevPic" href="pic?id=${pic.prevPicId}"></a>
            <img src="pics/${pic.picId}.jpg" />
            <a id="nextPic" href="pic?id=${pic.nextPicId}"></a>
        </div>
        <a id="download" href="downloadPic?id=${pic.picId}"></a>
    </body>
</html>

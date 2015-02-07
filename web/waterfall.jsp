<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>

<%-- 获取根目录路径 --%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<base href="<%=basePath%>">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="keywords" content="猫眼石 cateyes.cc 高清图片 人物 动物" />
        <meta name="description" content="猫眼石 cateyes.cc 高清图片 人物 动物" />
        <title>猫眼石<s:if test="cat != null"> - ${cat.catName}</s:if></title>
        <!-- 地址栏图标 -->
        <link rel="icon" type="image/x-icon" href="images/shortCutIcon.png" />
        <link rel="shortcut icon" href="images/shortCutIcon.png" >  
        <!-- CSS文件 -->
        <link type="text/css" rel="stylesheet" href="css/global.css" />
        <link type="text/css" rel="stylesheet" href="css/waterfall.css" />
        <!-- JS文件 -->
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/nav.js"></script>
        <script type="text/javascript" src="js/waterfall.js"></script>
    </head>
    <body>
        <%-- 导航 --%>
        <s:action name="nav" executeResult="true"></s:action>
        <div id="wrap">
            <div id="main" catId="${nowCatId}" minPicPublishDateTime="<s:date name="#minPicPublishDateTime" format="yyyy-MM-dd HH:mm:ss" />">
                <s:iterator value="#pics">
                    <a href="pic?id=${picId}" target="_blank"><img height="${picHeight / (picWidth / 200)}" src="pics/${picId}.jpg" /></a>
                </s:iterator>
            </div>
            <div id="morePics"></div>
        </div>
        <a id="toTop" href="#"></a>
    </body>

</html>

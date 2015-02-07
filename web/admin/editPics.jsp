<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

<%-- 验证管理员已登录 --%>
<% 
    if(request.getSession().getAttribute("ADMIN") == null) {
        response.sendRedirect("../admin/login.jsp"); 
        return;
    }
%>

<%-- 获取根目录路径 --%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<base href="<%=basePath%>">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>猫眼石 - 编辑图片</title>
        <!-- 地址栏图标 -->
        <link rel="icon" type="image/x-icon" href="images/shortCutIcon.png" />
        <link rel="shortcut icon" href="images/shortCutIcon.png" > 
        <!-- CSS文件 -->
        <link type="text/css" rel="stylesheet" href="css/global.css" />
        <link type="text/css" rel="stylesheet" href="css/admin/editPics.css" />
        <link type="text/css" rel="stylesheet" href="TimerPicker/css/jquery-ui-1.8.17.custom.css" />
        <link type="text/css" rel="stylesheet" href="TimerPicker/css/jquery-ui-timepicker-addon.css" />
        <!-- JS文件 -->
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/admin/editPics.js"></script>
        <script type="text/javascript" src="TimerPicker/js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="TimerPicker/js/jquery-ui-1.8.17.custom.min.js"></script>
        <script type="text/javascript" src="TimerPicker/js/jquery-ui-timepicker-addon.js"></script>
        <script type="text/javascript" src="TimerPicker/js/jquery-ui-timepicker-zh-CN.js"></script>
        <script type="text/javascript" src="TimerPicker/js/ui_timepicker.js"></script>
    </head>
    <body>
        <div id="wrap">
            <div id="global" >
                <s:select cssClass="cat" list="#cats" listKey="catId" listValue="catName" />
                <input type="submit" id="countSize" value="计算尺寸" />
                初始时间 - <input type="text" class="dateTime" />
                间隔 - <input type="text" id="space" />分钟
                <input type="submit" id="max" value="最后时间" />
                <input type="submit" id="setTime" value="设定时间" />
            </div>
            <s:form action="editPics" theme="simple">
            <s:iterator value="pics" status="st">
                <div class="pic">
                    <img class="img" src="pics/${picId}.jpg" />
                    <s:select cssClass="cat" name="pics[%{#st.index}].catId" list="#cats" listKey="catId" listValue="catName" />
                    <span class="size"></span>
                    <s:textfield name="pics[%{#st.index}].picPublishDateTime" cssClass="dateTime" />
                    <s:textarea name="pics[%{#st.index}].picDesc" />
                    <s:hidden name="pics[%{#st.index}].picId" />
                    <s:hidden cssClass="width" name="pics[%{#st.index}].picWidth" />
                    <s:hidden cssClass="height" name="pics[%{#st.index}].picHeight" />
                </div>
            </s:iterator>
            <s:submit id="sure" value="确定提交" />
            <s:submit id="relieve" value="解除检查" />
            </s:form>
        </div>
    </body>
</html>

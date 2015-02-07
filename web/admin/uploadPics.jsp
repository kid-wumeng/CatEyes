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
        <title>猫眼石 - 上传图片</title>
        <!-- 地址栏图标 -->
        <link rel="icon" type="image/x-icon" href="images/shortCutIcon.png" />
        <link rel="shortcut icon" href="images/shortCutIcon.png" > 
        <!-- CSS文件 -->
        <link type="text/css" rel="stylesheet" href="css/global.css" />
        <link type="text/css" rel="stylesheet" href="css/admin/uploadPics.css" />
        <!-- JS文件 -->
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/admin/uploadPics.js"></script>
    </head>
    <body>
        <s:form action="admin/uploadPics" enctype="multipart/form-data" theme="simple">
            <s:iterator begin="0" end="19" step="1" status="st">
                <div>
                    <button class="clear">清空</button>
                    <span>${st.index + 1}</span>
                    <s:file name="file" size="80" />
                </div>
            </s:iterator>
            <s:submit id="upload" value="上传" />
        </s:form>
    </body>
</html>

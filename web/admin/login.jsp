<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

<%-- 验证管理员未登录 --%>
<% 
    if(request.getSession().getAttribute("ADMIN") != null) {
        response.sendRedirect("../admin/uploadPics.jsp"); 
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
        <title>猫眼石 - 管理员登录</title>
        <!-- 地址栏图标 -->
        <link rel="icon" type="image/x-icon" href="images/shortCutIcon.png" />
        <link rel="shortcut icon" href="images/shortCutIcon.png" > 
    </head>
    <body>
        <s:form action="admin/login">
            帐号<s:textfield name="admin.adminAccount" />
            密码<s:password name="admin.adminPass" />
            <s:submit value="登录" />
        </s:form>
    </body>
</html>

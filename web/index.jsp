<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%       
    //response.sendRedirect("admin/uploadPics.jsp");
%>

<s:action name="New" executeResult="true">
    <s:param name="pic.catId">new</s:param>
    <s:param name="pic.picNum">50</s:param>
</s:action>

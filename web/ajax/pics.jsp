<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<pics>
<maxPublishDateTime><s:date name="#maxPublishDateTime" format="yyyy-MM-dd HH:mm:ss" /></maxPublishDateTime>
<minPicPublishDateTime><s:date name="#minPicPublishDateTime" format="yyyy-MM-dd HH:mm:ss" /></minpicpublishdatetime>
<s:iterator value="#pics">
    <pic id="${picId}" width="${picWidth}"  height="${picHeight}" />
</s:iterator>
</pics>

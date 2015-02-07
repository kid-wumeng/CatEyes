<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!-- CSS文件 -->
<link type="text/css" rel="stylesheet" href="css/nav.css" />

<div id="nav">
    <div id="logo"></div>
    <div id="aboutUs">
        <h1>关于我们</h1>
        <div>
            <p>
                【 透过猫眼石，让我们一起认识这个世界吧！(～￣▽￣)～ 】 <br />
                CatEyes.cc [ 2013.5.20 - Today ] 沪ICP备13001734号-2 <br />
                本站图片均来源于互联网。 <br />
                联系邮箱：cateyes@163.com
            </p>
        </div>
    </div>
    <a id="home" href="cateyes.cc">返回首页</a>
    <ul id="cats">
        <li id="animal">
            <h1>动物</h1>
            <div>
                <s:iterator value="#animals">
                    <a class="${catColor}" id="${catId}" href="${catEnglishName}">
                        <span>${catName}</span>
                    </a>
                </s:iterator>
            </div>
        </li>
<!--        <li>
            <h1>人物</h1>
            <div></div>    
        </li>-->
    </ul>
    <s:form id="go" action="" method="post">
        <s:hidden id="picNum" name="pic.picNum"></s:hidden>
        <s:hidden id="catId" name="pic.catId"></s:hidden>
    </s:form>
</div>
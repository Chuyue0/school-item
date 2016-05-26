<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<head>
    <title>新闻详情页面</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
</head>
<body>

<div id="Title_bar">
    <div id="Title_bar_Head"> 
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 新闻详情
        </div>
        <div id="Title_End"></div>
    </div>
</div>
<div id="MainArea">
   <h2>${title }</h2>
   	来源：${resource}
  	作者： ${author }
  	时间： ${times }<hr>
   	<p>${content }</p>
   	编辑人：${editor }
</div>
</body>
</html>
	
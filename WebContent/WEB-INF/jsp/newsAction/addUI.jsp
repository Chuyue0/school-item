<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
	<title>新闻添加页面</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
</head>
<body>

<div id="">
	<form id="addNewsForm" action="${pageContext.request.contextPath}/newsAction_add" method="post" >
		新闻标题：<input type="text" name="title" value="${title }"/><br><br>
		来源：<input type="text" name="resource" value="${resource }"/><br><br>
		主要内容：<input type="text" name="content" value="${content }"/><br><br>
		作者：<input type="text" name="author" value="${author }"/><br><br>
		编辑：<input type="text" name="editor" value="${editor }"/><br><br>
		<input type="submit" value="添加">  
		<button><a href="javascript:history.go(-1);">返回</a></button>
	</form>
</div>
</body>
</html>
    
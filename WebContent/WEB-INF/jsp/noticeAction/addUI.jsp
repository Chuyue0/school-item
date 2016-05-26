<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
	<title>公告添加页面</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
</head>
<body>
<div id="">
	<form id="addNewsForm" action="${pageContext.request.contextPath}/noticeAction_add" method="post" >
		公告名称：<input type="text" name="title" value="${title }"/><br><br>
		公告内容：<input type="text" name="content" value="${content }"/><br><br>
		发布部门：<input type="text" name="department" value="${author }"/><br><br>
		<input type="submit" value="添加"> 
	</form>
</div>
</body>
</html>
    
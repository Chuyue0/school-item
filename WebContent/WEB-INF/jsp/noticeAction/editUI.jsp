<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
	<title>公告添加页面</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
</head>
<body>
<div id="">
	<form id="addNoticeForm" action="${pageContext.request.contextPath}/noticeAction_edit" method="post" >
		<input type="hidden" name="id" value="${id }" />  
		公告名称：<input type="text" name="title" value="${title }"/><br><br>
		公告内容：<input type="text" name="content" value="${content }"/><br><br>
		发布部门：<input type="text" name="department" value="${department }"/><br><br>
		<input type="submit" value="保存"> 
		<button><a href="javascript:history.go(-1);">返回</a></button>
	</form>
</div>
</body>
</html>
    
<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
	<title>玉米病虫害查询</title>
</head>

	<frameset rows="70,*,50" framespacing=0 border=0 frameborder="0">
		<frame noresize name="TopMenu" scrolling="no" src="${pageContext.request.contextPath}/indexAction_top.action">
		<frameset cols="250,*" id="resize">
			<frame noresize name="menu" scrolling="yes" src="${pageContext.request.contextPath}/indexAction_left.action">
			<frame noresize name="right" scrolling="yes" src="${pageContext.request.contextPath}/indexAction_right.action">
		</frameset>
		<frame noresize name="status_bar" scrolling="no" src="${pageContext.request.contextPath}/indexAction_bottom.action">
	</frameset>

	<noframes><body>
</body>
</noframes></html>




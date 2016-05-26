<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/jquery/jquery-2.1.1.js"></script>
<title>Insert title here</title>
<style type="text/css">
	body{background-color:#f8f8f8;}
	*{ font-size:16px;}
	.updatepw{ margin-left:200px; margin-top:50px; padding:20px; }
	#updatePassword{ margin-top:20px;}
	tr{ margin:10px 0; display:block;}
	.updatepw span{ font-weight:bold;}
</style>
</head>
<body>
	<c:if test="not empty ${user.username }"> 
		<span>${user.username }</span>,您好！
	</c:if>
	<div class="updatepw">
	<span>${user.username }</span> 您好,请尽快修改密码
	<form id ="updatePassword" action="userAction_updatePassword" method="post">
		<input type="hidden" name="id" value="${user.id }"/>
		<table>
			<tr>
				<td>密码修改：</td>
				<td><input type="password" name="password1"/></td>
			</tr>
			<tr>
				<td>确认密码：</td>
				<td><input type="password" name="password2"/></td>
			</tr>
		</table>
		<input type="submit" value="确认修改" />
	</form>
	</div>
	${message}
	<!-- <a id="okay">确认修改</a> -->
</body>
<!-- <script type="text/javascript">
	$("#okay").click(function(){
		alert("222");
		$("#updatePassword").submit();
	});
</script> -->
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<form id="saveForm" action="userAction_save" method="post">
		<input type="hidden" name="id" value="${user.id }"/>
	<table>
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="username" value="${user.username }" readonly="true" /></td>
		</tr>
		<tr>
			<td>真实姓名：</td>
			<td><input type="text" name="realName" value="${user.realName }" /></td>
		</tr>
		<tr>
			<td>性别：</td>
			<td>
				 <input type="radio" name="gender" value="女" id="female" /><label for="female">女</label> &nbsp; &nbsp; 
            	 <input type="radio" name="gender" value="男" id="male"  /><label for="male">男</label>
			</td>
		</tr>
		<tr>
			<td>电话号码：</td>
			<td><input type="text" name="phoneNumber" value="${user.phoneNumber }" /></td>
		</tr>
		<tr>
			<td>邮箱：</td>
			<td><input type="text" name="email" value="${user.email }" /></td>
		</tr>
		<tr>
			<td>地址：</td>
			<td><input type="text" name="address" value="${user.address }" /></td>
		</tr>
	</table>
	<input type="submit" value="保存" />
	<button><a href="javascript:history.go(-1);">返回</a></button>
	</form>
</div>
</body>
</html>
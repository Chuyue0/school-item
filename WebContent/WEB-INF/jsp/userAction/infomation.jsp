<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{background-color:#f8f8f8;}
	*{font-size:16px;}
	a{text-decoration:none;}
	table,tr,td{border:1px solid #000;}
	.inforsty{ margin-left:200px; }
	td{ width:200px; height:50px; text-align:center;}
	.modibtn{margin-left:200px; margin-top:20px; }
	.infortit{ font-family:"微软雅黑";}
</style>
</head>
<body>

<div class="inforsty">
	<p class="infortit">您的个人信息如下：</p>
	<table>
		<tr>
			<td>用户名：</td>
			<td>${user.username }</td>
		</tr>
		<tr>
			<td>真实姓名：</td>
			<td>${user.realName }</td>
		</tr>
		<tr>
			<td>性别：</td>
			<td>${user.gender }</td>
		</tr>
		<tr>
			<td>电话号码：</td>
			<td>${user.phoneNumber }</td>
		</tr>
		<tr>
			<td>邮箱：</td>
			<td>${user.email }</td>
		</tr>
		<tr>
			<td>地址：</td>
			<td>${user.address }</td>
		</tr>
	</table>
	</div>
	<button class="modibtn"><a href="userAction_editInfomationUI?id=${id}" >修改个人信息</a></button>
</body>
</html>
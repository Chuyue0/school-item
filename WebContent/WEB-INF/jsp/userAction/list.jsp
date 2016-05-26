<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
    <title>用户列表</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
<style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;margin-top: 50px;
    margin-left: 60px;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
	text-align: center;
}
.addbtn{margin-left: 60px;
    margin-top: 10px;
    width: 100px;
    height: 30px;
    line-height: 25px;
    border-radius: 5px;
    color: #fff;}
    .lititle{margin:100px 0 30px 500px; font-size:28px; color:#000;}
    table.gridtable tr td {
    	background-color: #F8F8F8;
	}
</style>
</head>
<body>
<div class="lititle">用户信息管理</div>
<div id="">
	<table class="gridtable">
		<tr align=center valign=middle>
                <td width="200">登录名</td>
                <td width="200">姓名</td>
                <td width="200">性别</td>
                <td width="200">联系电话</td>
                <td width="200">邮箱</td>
                <td width="200">地址</td>
                <td width="200" colspan="2">操作</td> 
          </tr>
          <c:forEach items="${userList}" var="user">
         	<tr class="TableDetail1 template">
         		<td>${user.username}</td>
         		<td>${user.realName}</td>
         		<td>${user.gender}</td>
         		<td>${user.phoneNumber}</td>
         		<td>${user.email}</td>
         		<td>${user.address}</td>
         		<td width="100"><a href="userAction_editUI?id=${user.id }">修改</a></td> 
         		<td width="100"><a href="userAction_delete?id=${user.id }" onClick="isDeleted()">删除</a></td>
            </tr>
         </c:forEach>
	</table>
    <button class="addbtn"><a href="userAction_addUI">添加</a></button>
</div>
</body>
<script language="javascript"> 
    function isDeleted() { 
        if (!confirm("确认要删除？")) { 
            window.event.returnValue = false; 
        } 
    } 
</script>
</html>
	
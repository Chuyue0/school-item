<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>公告列表页面</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
<style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:12px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
	margin: 0 auto;
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
	text-align:center;
}
.lititle{margin:100px 0 20px; font-size:28px; color:#000; font-size:28px; text-align:center;}
.addbtn{ margin-top:10px; margin-left:300px;}
table.gridtable tr td {
    	background-color: #F8F8F8;
	}
</style>
</head>
<body>
<div class="lititle">公告管理</div>
<div id="">
	<table class="gridtable">
		<tr align=center valign=middle>
               <td width="200">标题</td>
                <td width="200">内容</td>
                <td width="200">部门</td>
                <td width="200">时间</td>
                <td width="200" colspan="2">操作</td> 
          </tr>
          <c:forEach items="${noticeList}" var="notice">
         	<tr class="TableDetail1 template">
         		<td>${notice.title}</td>
         		<td>${notice.content}</td>
         		<td>${notice.department}</td> 
         		<td>
         			<fmt:formatDate value="${notice.times}" pattern="yyyy-MM-dd HH:mm:ss"/> 
	         	</td>
         		<td width="100"><a href="noticeAction_editUI?id=${notice.id }">修改</a></td> 
         		<td width="100"><a href="noticeAction_delete?id=${notice.id }" onClick="isDeleted()">删除</a></td>
            </tr>
         </c:forEach>
	</table>
   <button class="addbtn"><a href="noticeAction_addUI">添加公告</a></button>
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
	
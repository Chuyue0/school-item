<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>新闻列表页面</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
<style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
	margin-top:50px;
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
.lititle{margin:100px 0 auto; font-size:28px; color:#000; font-size:28px; text-align:center;}
.addbtn{ margin-top:10px; margin-left:10px}
table.gridtable tr td {
    	background-color: #F8F8F8;
	}
</style>
</head>
<body>
<div class="lititle">新闻管理</div>
<div id="">
	<table class="gridtable">
		<tr align=center valign=middle>
               <td width="200">标题</td>
                <td width="200">来源</td>
                <td width="200">主要内容</td>
                <td width="200">作者</td>
                <td width="200">编辑</td>
                <td width="200">时间</td>
                <td width="200" colspan="2">操作</td> 
          </tr>
         <c:forEach items="${newsList}" var="news">
         	<tr class="TableDetail1 template">
         		<td>${news.title}</td>
         		<td>${news.resource}</td>
         		<td>${news.content}</td>
         		<td>${news.author}</td>
         		<td>${news.editor}</td>
         		<td><fmt:formatDate value="${news.times}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
         		<td width="100"><button><a href="newsAction_editUI?id=${news.id }">修改</a></button></td> 
         		<td width="100"><button><a href="newsAction_delete?id=${news.id }" onClick="isDeleted()">删除</a></button></td> 
            </tr>
         </c:forEach>
	</table>
   <button class="addbtn"><a href="newsAction_addUI">添加新闻</a></button>
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
	
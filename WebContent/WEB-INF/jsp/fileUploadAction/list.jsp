<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>病虫害图片列表</title>
	<style type="text/css">
        *{font-family: "微软雅黑"; margin: 0; padding: 0;}
        a{text-decoration: none;}
        .fl{float:left; }
        .tac{text-align:center;}
        .showCon{width:1000px; margin:50px 200px;}
        .showCon .showInfor{ width:200px; height: 240px; margin-bottom: 20px; text-align: left; font-size: 14px; margin-right: 10px; box-sizing: border-box;}
        .showCon .showInfor.noMargin{ margin-right: 0;}
        .showCon .showInfor img{ width: 180px; height: 190px; display: block; border: 1px solid #000; padding: 5px; border-radius: 5px;}
        .showCon .showInfor p{ height: 25px; line-height: 25px;}
        .showCon .showInfor .showTitle{  color:#404040; font-weight: bold;}
        .pictit{ margin-left:300px; margin-bottom:10px; font-weight:normal;}
    </style>
</head>
<body>	
	 <div class="showCon">
	 <h2 class="pictit">病虫害图片区</h2>
	 	<c:forEach items="${fileUploadsList }" var="list"> 
        <div class="showInfor fl">
            <img src="${pageContext.request.contextPath}/${list.savepath }/${list.uuidname }" alt="缩略图" />
            <p class="showTitle">${list.filename }</p>
        </div>
        </c:forEach>
        <div class="clear"></div>
    </div>
</body>
</html>
	
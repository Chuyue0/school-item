<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>病虫害图片列表</title>
    <style type="text/css">
		*{ margin: 0; padding: 0;}
		body{background-color:#f8f8f8;}
		ul,ol{list-style: none;}
		img{display: block; border: none;}
		/* .box{width: 992px; height: 420px; margin: 100px auto; position: relative;} */
		.box{width: 800px; height: 500px; margin: 100px 0 0 100px; position: relative;}
		.left,.right{width: 41px; height: 69px; background: url(js/lunbotu/arr.png) no-repeat; position: absolute; top: 177px; z-index: 100; display: none;}
		.left{background-position: -84px 0; left: 0;}
		.left:hover{background-position: left 0;}
		.right{background-position: right 0; right: 0;}
		.right:hover{background-position: -42px 0;}
		.box ul li{position: absolute; left: 0; top: 0; display: none;}
		.box ol{position: absolute; right: 10px; bottom: 10px;}
		.box ol li{float: left; width: 30px; height: 20px; border: 1px solid #fff; background: rgba(0,0,0,0.1); text-align: center; line-height: 20px; margin: 0 5px; color: #fff; cursor: pointer;}
		.box ol li:hover{background: rgba(0,0,0,0.5);}
		.box ol li.current{background: rgba(0,0,0,0.5);}
	</style>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/lunbotu/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/lunbotu/xiaomi.js"></script>
</head>
<body>
	<div class="box">
		<a href="javascript:;" class="left"></a>
		<a href="javascript:;" class="right"></a>
		<ul>
			<c:forEach items="${fileUploadsList }" var="list" varStatus="status">
				<c:if test="${status.count eq 1}">
					<li style="display:block;"><img src="${pageContext.request.contextPath}/${list.savepath }/${list.uuidname }" width="800" height="500"  alt="" /></li>	
				</c:if>
				<c:if test="${status.count eq 2 }">
					<li><img src="${pageContext.request.contextPath}/${list.savepath }/${list.uuidname }" width="800" height="500"  alt="" /></li>	
				</c:if>
				<c:if test="${status.count eq 3 }">
					<li><img src="${pageContext.request.contextPath}/${list.savepath }/${list.uuidname }" width="800" height="500"  alt="" /></li>	
				</c:if>
				<c:if test="${status.count eq 4 }">
					<li><img src="${pageContext.request.contextPath}/${list.savepath }/${list.uuidname }" width="800" height="500"  alt="" /></li>	
				</c:if>
				<c:if test="${status.count eq 5 }">
					<li><img src="${pageContext.request.contextPath}/${list.savepath }/${list.uuidname }" width="800" height="500"  alt="" /></li>	
				</c:if>
       		</c:forEach>
		</ul>
		<ol>
			<li class="current">1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
		</ol>
	</div>
</body>
</html>
	
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>病虫害列表</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
    <script type="text/javascript" src="${pageContext.request.contextPath }/laypage-v1.3/laypage/laypage.js"></script>
<style type="text/css">
    *{ font-size: 14px;}
        .fl{float: left;}
        .fr{float: right;}
        ul,ol{ list-style: none;}
        .newsList{ width:800px; height: auto; margin: 50px auto 0;}
        .newsList .list{ width: 800px; height: 120px; background-color: #CACACA; padding: 15px 20px; margin: 10px 0;}
        .list-pic{ width: 120px; height: 120px; background-color: #ccc; overflow: hidden; border-radius: 10px;}
        .list-pic img{ width: 120px; height:120px;}
        .list-infor{ margin-left: 20px; width:660px; padding-top: 10px;}
        .list-infor .title{ font-size: 18px; color: #FF7300; line-height: 25px; display:inline-block;}
        .list-infor .type{ width:50px; height:25px; background-color:#ff6400;display:inline-block; vertical-align:middle; border-radius:5; 
        line-height:25px; text-align: center;}
        .list-infor .date{ color: #727272; font-size: 12px; height: 30px; line-height: 30px;}
        .list-infor .descript{color: #490000; line-height: 25px;    height: 25px; white-space:nowrap; text-overflow: ellipsis; overflow: hidden;}
</style>
</head>
<body>
<c:if test="${empty collectionsList}">
		暂无收藏信息，请赶快去收藏哦！
</c:if>
<div id="MainArea"> 
    <ul class="newsList">
    	<c:forEach items="${collectionsList }" var="list">
    	 <li class="list">
            <div class="list-pic fl">
                <a href="disasterInfoAction_detail?id=${list.id}"><img src="${pageContext.request.contextPath}/${list.savepath }/${list.uuidname }" width="100%" height="100%" alt="缩略图" /></a>
            </div>
            <div class="list-infor fl">
                <div class="title"><a href="disasterInfoAction_detail?id=${list.id}">${list.name}</a></div>
                <div class="type">
                	<c:if test="${list.types eq '1'}">
                		病害
                	</c:if>
                	<c:if test="${list.types eq '2'}">
                		虫害
                	</c:if>
                </div>
                <div class="date">${list.years } &nbsp;&nbsp;
                	${list.province}
         			${list.city } 
         			${list.counties }
                </div>
                <div class="descript">${list.symptoms }</div>
                <div>
                	<button><a href="collectionsAction_cancelCollections?id=${list.id }">取消收藏</a></button>
                	  收藏时间：<fmt:formatDate value="${list.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/> 
                </div>
              	
            </div>
        </li>	
    	</c:forEach>
    </ul>
</div>
</body>
</html>
	
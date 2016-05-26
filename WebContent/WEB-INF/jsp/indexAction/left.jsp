<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>导航菜单</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/menu.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
	<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/js/html5.js"></script>
	<![endif]-->
	<style type="text/css">
		*{font-size:16px; }
	</style>
	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script>
	(function($){
		$(window).load(function(){			
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});	
		});
	})(jQuery);
</script>
</head>
<body style="margin: 0">

<div id="Menu"> 
    
    	<!--aside nav-->
		<aside class="lt_aside_nav content mCustomScrollbar">
		 <h2><a target="_parent" href="indexAction_index">首页</a></h2> 
		 <ul>
		 <li>
		   <dl>
		    <dt>病虫害基本信息</dt>
		    <dd><a target="right" href="baseInfoAction_maizeBaseInfo">玉米农作物</a></dd>
		    <dd><a target="right" href="baseInfoAction_disasterBaseInfo">病虫害</a></dd>
		    <dd><a target="right" href="fileUploadAction_list">病虫害图片展示</a></dd> 
		   </dl>
		  </li>
		  <li> 
		  <li>
		   <dl>
		    <dt>新闻和公告</dt>
		    <!--当前链接则添加class:active-->
		    <dd><a href="#" class="active">新闻</a></dd>
		    <dd><a href="#">公告</a></dd>
		    <dd><a href="#">农作物资料</a></dd>
		   </dl>
		  </li>
		  <li>
		   <dl>
		     <dt>玉米病虫害信息查询</dt>
		     <dd><a target="right" href="disasterInfoAction_listName">病虫害名称查询</a></dd> 
		     <dd><a target="right" href="disasterInfoAction_listType">病虫害类型查询</a></dd> 
		     <dd><a target="right" href="disasterInfoAction_listYears">病虫害年份查询</a></dd> 
		     <dd><a target="right" href="disasterInfoAction_list">综合查询</a></dd>
		   </dl>
		  </li>
		  <li>
		   <dl>
		    <dt>病虫害特征统计分析</dt>
		    <dd><a target="right" href="disasterInfoAction_tatisticsProvince">全国各省病虫害数量统计</a></dd>
		    <dd><a target="right" href="disasterInfoAction_tatisticsTypes">病虫害类型数量统计</a></dd>
		   </dl>
		  </li>
		  <c:if test="${user.username eq 'admin' }">
		  <li>
		   <dl>
		    <dt>系统管理</dt>
		    <dd><a target="right" href="userAction_list">用户管理</a></dd>
		    <dd><a target="right" href="newsAction_list">新闻管理</a></dd>
		    <dd><a target="right" href="noticeAction_list">公告管理</a></dd>
		    <dd><a target="right" href="disasterInfoAction_list">病虫害信息管理</a></dd>
		   </dl>
		  </li>
		  </c:if>
		  <li>
		   <dl>
		    <dt>系统帮助</dt>
		   </dl>
		  </li>
		  
		  <li>
		   <p class="btm_infor">© 2016 TuYan 所有</p>
		  </li>
		 </ul>
		</aside>
        
</div>
</body>
<script src="${pageContext.request.contextPath}/js/effect.js" type="text/javascript"></script>
</html>
	
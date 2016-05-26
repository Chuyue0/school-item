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
        .newsList{ width:800px; height: auto; margin: 0 auto;}
        .newsList .list{ width: 800px; height: 120px; background-color: #CACACA; padding: 15px 20px; margin: 10px 0;}
        .list-pic{ width: 120px; height: 120px; background-color: #ccc; overflow: hidden; border-radius: 10px;}
        .list-pic img{ width: 120px; height:120px;}
        .list-infor{ margin-left: 20px; width:660px; padding-top: 10px;}
        .list-infor .title{ font-size: 18px; color: #FF7300; line-height: 25px; display:inline-block;}
        .list-infor .types,#typesParams a{ width:50px; height:25px; background-color:#ff6400;display:inline-block; vertical-align:middle; border-radius:5; 
        line-height:25px; text-align: center;}
        #yearsParam2 a,.date{width:50px; height:25px; background-color:yellow;display:inline-block; vertical-align:middle; border-radius:5; 
        line-height:25px; text-align: center;}
        .list-infor .date{ color: #727272; font-size: 12px; height: 30px; line-height: 30px;}
        .list-infor .descript{color: #490000; line-height: 25px;    height: 50px; white-space:nowrap; text-overflow: ellipsis; overflow: hidden;}
        .collection{ float: right; margin-left:5px;}
        .delete{ float:right;}
</style>
</head>
<body>
<br><br><br><br>
<form id="pageForm" action="disasterInfoAction_list" method="post"> 
<div id="params">	
	<input id="nameParam" type="hidden" name="name" value="${name}"/>
	<input id="typesParam" type="hidden" name="types" value="${types}"/>
	<input id="yearsParam" type="hidden" name="years" value="${years}"/>
</div>
病虫害查询：<input id="nameParam2" type="text" value="${name }"/><a id="find" href="javascript:void(0);">搜索</a>
<div id="typesParams">
	灾害类型：
	<a href="javascript:void();" value="all">全部</a>
	<c:forEach items="${disasterInfoTypes }" var="list">
		<c:if test="${list.types eq '1' }">
			<a href="javascript:void();" value="1">病害</a>
		</c:if>
		<c:if test="${list.types eq '2' }">
			<a href="javascript:void();" value="2">虫害</a>
		</c:if>
	</c:forEach>
</div>
时间：
<div id="yearsParam2">  
	<a href="javascript:void();" value="all">全部</a>
	<c:forEach items="${yearsList}"  var="list">  
	    <a href="javascript:void();" value="${list.years }">${list.years }</a>
	</c:forEach> 
</div>
<div>
    <ul class="newsList">
    	<c:forEach items="${disasterInfoList }" var="list">
    	 <li class="list">
            <div class="list-pic fl">
                <a href="disasterInfoAction_detail?id=${list.id}"><img src="${pageContext.request.contextPath}/${list.savepath }/${list.uuidname }" width="100%" height="100%" alt="缩略图" /></a>
            </div>
            <div class="list-infor fl">
                <div class="title"><a href="disasterInfoAction_detail?id=${list.id}">${list.name}</a></div>
                <div class="types">
                	<c:if test="${list.types eq '1'}">
                		病害
                	</c:if>
                	<c:if test="${list.types eq '2'}">
                		虫害
                	</c:if>
                </div>
                <div class="date">${list.years }&nbsp;&nbsp;
                	${list.province}
         			${list.city } 
         			${list.counties }
                </div>
                <div class="descript">${list.symptoms }</div>
                <div class="collection">
                	<button>
                		<c:if test="${list.collections eq '0' }"> 
                			<a class="collectionYes" href="collectionsAction_addCollections?id=${list.id}">收藏</a>
                		</c:if>
                		<c:if test="${list.collections eq '1' }"> 
                			<a class="collectionNo" href="javascript:void();">已收藏</a>
                		</c:if>
                	</button>
                </div>
                <div class="delete">
                	<button><a href="disasterInfoAction_delete?id=${list.id}" onclick="return window.confirm('您确定要删除此新闻吗？')">删除</a></button>
                </div> 
            </div>
        </li>	
    	</c:forEach>
    </ul>
</div>
</form>

<a href="disasterInfoAction_addUI">新增灾害信息</a>
<div id="page1">222</div>
<script type="text/javascript">

	$("#find").click(function(){
		$("#params").children("input").val(null);
		$("#nameParam").val($("#nameParam2").val());
		check();
	});
	//灾害类型
	$("#typesParams a").click(function(){
		if($(this).attr("value")=='all'){
			$("#typesParam").val(null);
			$("#nameParam").val(null);
		}else{
			$("#nameParam").val(null);
			$("#typesParam").val($(this).attr("value"));
		}
		check();
	});
	//灾害时间
	$("#yearsParam2 a").click(function(){
		if($(this).attr("value")=='all'){
			$("#yearsParam").val(null);
			$("#nameParam").val(null);
		}else{
			$("#nameParam").val(null);
			$("#yearsParam").val($(this).attr("value"));
		}
		check();
	});
	
	//提交表单
	function check(){
		$("#pageForm").submit();
	};
jQuery(function(){ 
	$(".collectionYes").click(function(){
		layer.msg('成功收藏');
	});
	$(".collectionNO").click(function(){
		layer.msg('已成功收藏，请到我的收藏查看详细信息');
	});
	//以下将以jquery.ajax为例，演示一个异步分页
	function demo(curr){
	        //显示分页
	        laypage({
	            cont: 'page1', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
	            pages: 10, //通过后台拿到的总页数
	            curr: curr, //当前页
	            jump: function(obj, first){ //触发分页后的回调
	                if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
	                	alert(obj.curr);
	                    demo(obj.curr);
	                }
	            }
	        });
	};
	//运行
	demo(1);        
}); 
</script>
</body>
</html>
	
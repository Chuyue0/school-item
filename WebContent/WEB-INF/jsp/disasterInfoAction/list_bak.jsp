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
        .list-infor .type{ width:50px; height:25px; background-color:#ff6400;display:inline-block; vertical-align:middle; border-radius:5; 
        line-height:25px; text-align: center;}
        .list-infor .date{ color: #727272; font-size: 12px; height: 30px; line-height: 30px;}
        .list-infor .descript{color: #490000; line-height: 25px;    height: 50px; white-space:nowrap; text-overflow: ellipsis; overflow: hidden;}
        .collection{ float: right; margin-left:5px;}
        .delete{ float:right;}
</style>
</head>
<body>

<div id="Title_bar">
    <div id="Title_bar_Head"> 
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 病虫害管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>
<div id="MainArea">
	年度查询
	<select name="years">
	   <option value="未选择" selected="selected">未选择
	   <option value="2013">2013
	   <option value="2014">2014
	   <option value="2015">2015
	   <option value="2016">2016
 	</select>
    <table cellspacing="0" cellpadding="0" class="TableStyle">
        <thead>
            <tr align=center valign=middle id=TableTitle>
            	<td width="100">序号</td>
                <td width="300">名称</td>
                <td width="300">所属区域</td>
                <td width="300">时间</td>
                <td width="300" colspan="3">操作</td> 
            </tr>
        </thead>
        
        <tbody id="TableData" class="dataContainer" datakey="newsList">
          <s:iterator value="#disasterInfoList">
          	<tr class="TableDetail1 template">
         		<td>1</td> 
         		<td><s:a action="disasterInfoAction_detail?id=%{id}">${name}</s:a></td> 
         		<td>
         			${province}
         			${city } 
         			${counties }
         		</td> 
         		<td>${years }</td>
         		<td width="70" ><button><s:a action="disasterInfoAction_detail?id=%{id}">上传防止措施</s:a></button></td> 
         		<td width="70" ><button><s:a action="newsAction_editUI?id=%{id}">修改</s:a></button></td> 
         		<td width="70" ><button><s:a action="disasterInfoAction_delete?id=%{id}" onclick="return window.confirm('您确定要删除此新闻吗？')">删除</s:a></button></td>
            </tr>
          </s:iterator>
        </tbody>
    </table>
    <ul class="newsList">
    	<c:forEach items="${disasterInfoList }" var="list">
    	 <li class="list">
            <div class="list-pic fl">
                <a href="disasterInfoAction_detail?id=${list.id}"><img src="1.jpg" width="100%" height="100%" alt="缩略图" /></a>
            </div>
            <div class="list-infor fl">
                <div class="title"><a href="disasterInfoAction_detail?id=${list.id}">${list.name}</a></div>
                <div class="type">
                	<c:if test="${list.type eq '1'}">
                		病害
                	</c:if>
                	<c:if test="${list.type eq '2'}">
                		虫害
                	</c:if>
                </div>
                <div class="date"><fmt:formatDate value="${list.years }" pattern="yyyy-MM-dd" /> &nbsp;&nbsp;
                	${list.province}
         			${list.city } 
         			${list.counties }
                </div>
                <div class="descript">${list.symptoms }</div>
                <div class="collection">
                	<button>
                		<c:if test="${list.collections eq '0' }"> 
                			<a class="collectionYes" href="collectionsAction_addCollections?id=${list.id }">收藏</a>
                		</c:if>
                		<c:if test="${list.collections eq '1' }"> 
                			<a class="collectionNo" href="javascript:void();">已收藏</a>
                		</c:if>
                	</button>
                </div>
                <div class="delete">
                	<button><a href="disasterInfoAction_delete?id=${list.id }&type=${list.type}" onclick="return window.confirm('您确定要删除此新闻吗？')">删除</a></button>
                </div> 
            </div>
        </li>	
    	</c:forEach>
    </ul>
    <div id="page1">222</div>
    <!-- 其他功能超链接 -->
    <div id="TableTail">
        <div id="TableTail_inside">
            <s:a action="newsAction_addUI"><img src="${pageContext.request.contextPath}/style/images/createNew.png" /></s:a>
        </div>
    </div>
</div>
<script type="text/javascript">
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
	
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>病虫害列表</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
    <script type="text/javascript" src="${pageContext.request.contextPath }/laypage-v1.3/laypage/laypage.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-2.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/uploadify/scripts/jquery.uploadify.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/uploadify/css/uploadify.css">
	<style type="text/css">
		*{ font-size:16px;}
		#disateUI{ margin-top:50px; margin-left:100px;}
		textarea{display:inline-block; vertical-align:middle;}
	</style>
</head>
<body>

<div id="disateUI">
	<form id="addDisasterInfoForm" action="${pageContext.request.contextPath}/disasterInfoUploadAction_add" enctype="multipart/form-data" method="post" >
	
			<!-- <input type="hidden" name="filename" value=""/>
			<input type="hidden" name="savepath" value=""/> -->
		
		   灾害名称：<input type="text" name="name" value=""/><br><br>
		   灾害类型：<select name="type">
		   			<c:forEach items="${disasterInfoTypes }" var="list">
		   				<c:if test="${list.types eq '1'}">
		                	<option value="1" selected="selected">病害</option>
			            </c:if>
			            <c:if test="${list.types eq '2'}">
			                <option value="2">虫害</option>
			            </c:if>
		   			</c:forEach>
				</select><br><br>
		出现时间：<input type="text" name="years" value="${years }"/><br><br>
		灾害省份：<input type="text" name="province" value="${province }"/><br><br>
		灾害城市：<input type="text" name="city" value=""/><br><br>
		灾害区镇：<input type="text" name="counties" value=""/><br><br>
		
		病&nbsp;&nbsp;原：<input type="text" name="pathogen" value=""/><br><br>
		
		图片上传：
		<input type="file" name="fileUploads" id="fileUploads"><br><br>
		
		病&nbsp;&nbsp;症：<textarea rows="5" cols="80" name="symptoms"></textarea><br><br>
		
		发病规律：<textarea rows="5" cols="80" name="regulation"></textarea><br><br>
		防治措施：<textarea rows="5" cols="80" name="preventioninfo"></textarea><br><br>
		<input type="submit" value="添加"> 
		<button><a href="javascript:history.go(-1);">返回</a></button>
	</form>
</div>
</body>


<script type="text/javascript">

$("#upload").click(function(){
	var fileUploads=$("#fileUploads").val();
	var par=$("#addDisasterInfoForm");
	par.append("<input type='hidden' name='hiddenUploads' id='hiddenUploads' >");
	$("#hiddenUploads").val(fileUploads);
	alert($("#hiddenUploads").val());
});

$("#excelOne").uploadify ({
   /*  'swf': '${pageContext.request.contextPath}/uploadify/scripts/uploadify.swf', */
    'uploader':"${pageContext.request.contextPath}/disasterInfoAction_uploadFile",
	'buttonText': '请选择上传文件', //修改控件显示内容
	'fileObjName' : 'excelOne',  
	'auto' : false, //选定文件后是否自动上传，默认false
	'removeTimeout' : false, //设置上传完成后删除掉文件的延迟时间，默认为3秒。如果removeCompleted为false的话，就没意义了
	'fileSizeLimit' : '100MB', //设置上传文件的容量最大值。这个值可以是一个数字或者字符串。如果是字符串，接受一个单位（B,KB,MB,GB）。如果是数字则默认单位为KB。设置为0时表示不限制
	'removeCompleted' : false, //是否移除掉队列中已经完成上传的文件。false为不移除
	'onQueueComplete' : function(queueData) {  
		alert(queueData.filesSelected+'个文件导入完成,'+queueData.filesErrored+'文件导入失败', 2,1);
	         },
     'onCancel': function(file){
    	 alert('您要取消的文件是：'+'\''+file.name+'\'', 2, 8);		
      }
     	
  });
</script>
</html>



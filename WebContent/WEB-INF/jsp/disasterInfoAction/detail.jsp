<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>病虫害详细页面</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
<style type="text/css">
        *{font-family: "微软雅黑";}
        .fl{float: left;}
        .clear{ clear:both;}
        .infor{padding: 20px;}
        .inforPic{width: 800px; height: 510px; overflow: hidden;}
        .inforPic .pPic{ width:100%; height: 480px; border: 1px solid #000; display: block;}
        .inforPic .pTitle{height:30px; line-height: 30px;color: #D30; text-align: center;}
        .inforText{width: 700px; height: 510px; margin-left: 24px; font-size: 14px;}
        .inforText p{ line-height: 30px;}
        .inforText span{padding:0 10px; border-radius: 5px; text-align: center; height: 30px; line-height: 30px; background-color:#999; color: #FFF;}
        .inforText .tName{}
        .inforText .tName span{background-color: #14B800;}
        .inforText .tArea span{background-color: #C70000;}
        .inforText .tDate span{background-color: ;}
        .inforText .tPathogeny span{background-color: #C70000;}
        .inforText .tType span{background-color: ;}
        .inforText .tSymptom span{background-color: #C70000;}
        .inforText .tRegular span{background-color: ;}
        .inforText .tBtn{ margin-top: 10px;}
</style>
<style type="text/css">
    	body .layerClass .layui-layer-title{background:green; color:#fff; border: none;}
	</style>
</head>
<body>
    <div class="infor">
        <div class="inforPic fl">
            <img class="pPic" src="${pageContext.request.contextPath}/${savepath }/${uuidname }" alt="缩略图" />
            <div class="pTitle">${name }</div>
        </div>
        <div class="inforText fl">
            <p class="tName"><span>名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称</span>：${name }</p>
            <p class="tArea"><span>区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;域</span>：
            	${province }
                ${city }
            	${counties }
            </p>
            <p class="tDate"><span>出现时间</span>：${years}</p>
            <p class="tPathogeny"><span>病&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;原</span>：${pathogen }</p>
            <p class="tType"><span>类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型</span>：
            	<c:if test="${types eq '1'}">病害</c:if>
            	<c:if test="${types eq '2'}">虫害</c:if> 
            	
            </p>
            <p class="tSymptom"><span>症&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;状</span>：${symptoms }</p>
            <p class="tRegular"><span>发病规律</span>：${regulation }</p>
            <input class="tBtn" type="button" value="查看防治措施" />
            <a href="javascript:history.go(-1)"><button>返回</button></a>
        </div>
        <div class="clear"></div>
    </div>
    <div id="preventionInfo" style="display:none;padding:40px;">
				<c:if test="${not empty preventionInfoList}">
			　　		<s:iterator value="#preventionInfoList" status="sta">  
				 	<p>
				 	  ${sta.index+1 }:${preMethod }
				 	</p><br> 
				 </s:iterator>
				</c:if>
				<c:if test="${ empty preventionInfoList}">
					暂无防治措施，等耐心等候！！！
				</c:if>
			</div>
</body>
<script type="text/javascript">
$(".tBtn,#haha").click(function(){
	$("#preventionInfo").css('display','block'); 
	layer.open({
        type: 1,
        skin: 'layerClass',			//可css单独设置样式
        shift:3,					//动画，出场方式：0-6
        title:'${name}防止措施',
        area: ['600px', '360px'],
        maxmin: true,				//窗口最大最小化
        btn: ['我知道了'],
        yes: function(index, layero){ //或者使用btn1
            layer.close(index); 
         },
        closeBtn: 0,
        shadeClose: true, //点击遮罩关闭
        content: $('#preventionInfo')
    });  
	laypage({
	    cont: 'page11',
	    pages: 18, //可以叫服务端把总页数放在某一个隐藏域，再获取。假设我们获取到的是18
	    curr: function(){ //通过url获取当前页，也可以同上（pages）方式获取
	        var page = location.search.match(/page=(\d+)/);
	        return page ? page[1] : 1;
	    }(), 
	    jump: function(e, first){ //触发分页后的回调
	        if(!first){ //一定要加此判断，否则初始时会无限刷新
	            location.href = '?page='+e.curr;
	        }
	    }
	});
});
</script>
</html>
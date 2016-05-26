<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript" src="${pageContext.request.contextPath}/jquery/jquery-2.1.1.js"></script>
<script src="${pageContext.request.contextPath }/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
<script language="javascript" src="${pageContext.request.contextPath}/layer/layer.js"></script>
<style type="text/css">
        *{font-family: "微软雅黑";}
        a{text-decoration: none;}
        .fr{float:right;}
        .clear{clear: both;}
        body{  background-image: url(images/bg1.jpg); background-repeat: repeat;}
        .loginCon{width:500px;height: auto; margin: 90px auto 0;border-radius: 5px; padding: 20px 20px; padding-bottom: 0;
            background-color: #f7f7f7; border: 1px solid rgba(147, 184, 189,0.8); box-shadow: 0pt 2px 5px rgba(105, 108, 109, 0.7),  0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset; }
        .logtitle{ margin-bottom: 100px;width: 800px;text-align: center;height: 80px;line-height: 62px;font-size: 48px;color: rgb(6, 106, 117);background: -webkit-repeating-linear-gradient(-45deg, rgb(35, 163, 183) , rgb(20, 194, 220) 20px, rgb(102, 192, 206) 20px, rgb(120, 191, 202) 40px, rgb(35, 194, 218) 40px); 
            -webkit-text-fill-color: transparent; 
            -webkit-background-clip: text;}
       .loginCon .pre{padding-left: 15px; margin-bottom: 10px;}
        .loginCon .h1{font-size: 40px; color: rgb(6, 106, 117); padding: 2px 0 10px 0; font-weight: bold; text-align: center; padding-bottom: 30px; 
            background: -webkit-repeating-linear-gradient(-45deg, rgb(35, 163, 183) , rgb(20, 194, 220) 20px, rgb(102, 192, 206) 20px, rgb(120, 191, 202) 40px, rgb(35, 194, 218) 40px); 
            -webkit-text-fill-color: transparent; 
            -webkit-background-clip: text;} 
        .loginCon input{ line-height: 28px; margin: 8px 5px;     width: 400px; padding-left: 10px;}
        .loginCon .h1:after{content: ' '; display: block; width: 100%; height: 2px; margin-top: 10px; background: -webkit-linear-gradient(left, rgba(147,184,189,0) 0%,rgba(147,184,189,0.8) 20%,rgba(147,184,189,1) 53%,rgba(147,184,189,0.8) 79%,rgba(147,184,189,0) 100%);}
        .loginCon .userinfor{ color: #405c60;}
        .loginCon .userinfor input{ border: 1px solid #b2b2b2; box-shadow: 0px 1px 4px 0px rgba(168, 168, 168, 0.6) inset; border-radius: 5px;}
        .loginCon .btn{ width:100px; height: auto; padding: 8px 5px;margin-right: 16px; cursor: pointer; background: #3d9db3; color: #fff;font-size: 24px; border: 1px solid #1c7ab3; text-shadow: 0 1px 1px rgba(0, 0, 0, 0.5);border-radius: 5px;
            box-shadow:0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,0px 0px 0px 3px #fefefe, 0px 5px 3px 3px #d2d2d2; }
        .loginCon #remember{ margin: 0; width: 20px; margin-left: 6px; height: 20px; vertical-align: -5px; }
        .loginCon .tips{ display: block; font-size: 18px; padding-top: 10px; text-align: left; color: red; height: 30px;}
        .loginCon .change{height: 20px; width: 480px; padding: 17px 30px 20px 30px; font-size: 16px ; text-align: right; border-top: 1px solid #dbe5e8; color: #7f7c7c;
            background-color: #e1eaeb; background: repeating-linear-gradient(-45deg, rgb(247, 247, 247) , rgb(247, 247, 247) 15px, rgb(225, 234, 235) 15px, rgb(225, 234, 235) 30px, rgb(247, 247, 247) 30px ); margin-top: 94px; margin-left: -20px;}
        .loginCon .change a{ display: inline-block; background-color: #f7f8f1; line-height:25px;border-radius: 4px;border: 1px solid #cbd5d6; padding:0 10px; color: #1da2c1;}
        ::-webkit-input-placeholder  {color: #bebcbc; font-style: italic; }
        input {outline: none; }
    </style>
<script type="text/javascript">
		$(function(){
			document.forms[0].username.focus();//获取焦点
		});
	</script>
</head>
<body>
	<div class="loginCon logtitle">玉米病虫害信息查询信息系统</div>
    <div class="loginCon">
    <form id="loginForm" action="loginLogoutAction_login" autocomplete="on" method="post">
        <div class="pre h1">登&nbsp;录</div>
        <div class="pre userinfor">
            账&nbsp; &nbsp; 号:<input type="text" id="username" required="required" name="username" value="${username}" placeholder="请输入账号">
        </div>
        <div class="pre userinfor">
            密&nbsp; &nbsp; 码:<input type="password" id="password" required="required" name="password" value="${password }" placeholder="请输入密码">
        </div>
        <div class="pre">
            <input type="checkbox" id="remember" />
            <label for="remember">记住我</label>
            <font color="red"><s:fielderror/></font>
        </div>
        <div class="pre">
            <p class="tips"></p>
        </div>
        <div class="pre fr">
            <button type="button" class="btn" id="login" >登&nbsp;录</button>
        </div>
        <div class="pre change">
            没有帐号，赶紧来&nbsp;<a href="loginLogoutAction_registerUI">注册</a>&nbsp;吧！
        </div>
        <div class="clear"></div>
    </form>
    </div>  
</body>
<script type="text/javascript">
	$("#login").click(function(){
		var username = $("#username").val();
		var password = $("#password").val();
		username = $.trim(username); 
		if(username==''){
			layer.msg('用户名不能 为空,请输入用户名！');
		}else{
			if(password.length==0){
				layer.msg('请输入密码！');
			}else{
				$("#loginForm").submit();
			}
		}
	});
</script>
</html>
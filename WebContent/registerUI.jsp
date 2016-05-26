<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
        *{font-family: "微软雅黑";}
        a{text-decoration: none;}
        .fr{float:right;}
        .clear{clear: both;}
        body{  background-image: url(images/bg1.jpg); background-repeat: repeat;}
        .registCon{width:500px;height: auto; margin: 80px auto 0;border-radius: 5px; padding: 20px 20px; padding-bottom: 0;
            background-color: #f7f7f7; border: 1px solid rgba(147, 184, 189,0.8); box-shadow: 0pt 2px 5px rgba(105, 108, 109, 0.7),  0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset; }
        .regtitle{ margin-bottom: 90px;width: 800px;text-align: center;height: 80px;line-height: 62px;font-size: 48px;color: rgb(6, 106, 117);background: -webkit-repeating-linear-gradient(-45deg, rgb(35, 163, 183) , rgb(20, 194, 220) 20px, rgb(102, 192, 206) 20px, rgb(120, 191, 202) 40px, rgb(35, 194, 218) 40px); 
            -webkit-text-fill-color: transparent; 
            -webkit-background-clip: text;}
        .registCon .pre{padding-left: 15px; margin-bottom: 10px;}
        .registCon .h1{font-size: 48px; color: rgb(6, 106, 117); padding: 2px 0 10px 0; font-weight: bold; text-align: center; padding-bottom: 30px; 
            background: -webkit-repeating-linear-gradient(-45deg, rgb(35, 163, 183) , rgb(20, 194, 220) 20px, rgb(102, 192, 206) 20px, rgb(120, 191, 202) 40px, rgb(35, 194, 218) 40px); 
            -webkit-text-fill-color: transparent; 
            -webkit-background-clip: text;} 
        .registCon input{ line-height: 28px; margin: 8px 5px; width:370px; padding-left: 10px;border: 1px solid #b2b2b2; box-shadow: 0px 1px 4px 0px rgba(168, 168, 168, 0.6) inset; border-radius: 5px;color: #405c60;}
        .registCon .h1:after{content: ' '; display: block; width: 100%; height: 2px; margin-top: 10px; background: -webkit-linear-gradient(left, rgba(147,184,189,0) 0%,rgba(147,184,189,0.8) 20%,rgba(147,184,189,1) 53%,rgba(147,184,189,0.8) 79%,rgba(147,184,189,0) 100%);}
        .registCon .gender input{ width: 20px; height: 20px; box-shadow: none; display: inline-block; vertical-align: -4px; }
        .registCon .btn{ width:100px; height: auto; padding: 8px 5px;margin-right: 16px; cursor: pointer; background: #3d9db3; color: #fff;font-size: 24px; border: 1px solid #1c7ab3; text-shadow: 0 1px 1px rgba(0, 0, 0, 0.5);border-radius: 5px;
            box-shadow:0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,0px 0px 0px 3px #fefefe, 0px 5px 3px 3px #d2d2d2; }
        .registCon .tips{ display: block; font-size: 18px; padding-top: 10px; text-align: left; color: red; height: 30px;}
        .registCon .change{height: 20px; width: 480px; padding: 17px 30px 20px 30px; font-size: 16px ; text-align: right; border-top: 1px solid #dbe5e8; color: #7f7c7c;
            background-color: #e1eaeb; background: repeating-linear-gradient(-45deg, rgb(247, 247, 247) , rgb(247, 247, 247) 15px, rgb(225, 234, 235) 15px, rgb(225, 234, 235) 30px, rgb(247, 247, 247) 30px ); margin-top: 94px; margin-left: -20px;}
        .registCon .change a{ display: inline-block; background-color: #f7f8f1; line-height:25px;border-radius: 4px;border: 1px solid #cbd5d6; padding:0 10px; color: #1da2c1;}
        ::-webkit-input-placeholder  {color: #bebcbc; font-style: italic; }
        input {outline: none; }
    </style>
    <script src="${pageContext.request.contextPath }/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
</head>
<body>
<div class="registCon regtitle">玉米病虫害信息查询信息系统</div>
    <div class="registCon">
    <form id="registerForm" action="loginLogoutAction_register" autocomplete="on" method="post">
        <div class="pre h1">注&nbsp;册</div>
        <div class="pre">
            账&nbsp; &nbsp;&nbsp; &nbsp; 号： <input id="username" type="text" name="username" value="${username }" placeholder="请输入您的账号" required="required" />
           
        </div>
        <div class="pre">
            密&nbsp; &nbsp;&nbsp; &nbsp; 码：<input id="password" type="password" name="password" value="${password }" placeholder="请输入您的密码" required="required">
        </div>
        <div class="pre gender">
            性&nbsp; &nbsp;&nbsp; &nbsp; 别：
            <input type="radio" name="gender" value="女" id="female" /><label for="female">女</label> &nbsp; &nbsp; 
            <input type="radio" name="gender" value="男"  id="male" /><label for="male">男</label>
        </div>
        <div class="pre">
            真实姓名：<input type="text" placeholder="请输入您的姓名" name="realName" value="${realName }"  required="required" id="realName" />
        </div>
        <div class="pre">
            联系电话：<input type="number" placeholder="请输入您的号码" min="1" max="11" name="phoneNumber" value="${phoneNumber }"  id="phoneNumber" required="required"  />
        </div>
        <div class="pre">
            邮&nbsp; &nbsp;&nbsp; &nbsp; 箱：<input type="eamil" placeholder="xxx@mail.com" required="required" id="eamil" name="email" value="${email }" />
        </div>
        <div class="pre">
            地&nbsp; &nbsp;&nbsp; &nbsp; 址：<input type="text" placeholder="请输入您的地址" required="required" id="address" name="address" value="${address }"/>
        </div>
        <div class="pre">
            <div class="tips"></div>
             <font color="red"><s:fielderror/></font>
        </div>
        <div class="pre fr">
            <input type="button" class="btn" id="regist" value="注&nbsp;册" />
        </div>
        <div class="pre change">
            有帐号，赶紧来&nbsp;<a href="loginLogoutAction_loginUI">登录</a>&nbsp;吧！
        </div>
        <div class="clear"></div>
    </form>
    </div>
</body>
<script type="text/javascript">
    $(".tips").hide();
    $("#regist").on('click',function(){
        register();
        return false;
    });
    function register(){
        if(!$('#username').val()){ 
            $(".tips").html("请输入账号").show();
            $('#username').focus();
            return;
        }else if($('#password').val().length < 5){
            $(".tips").html("密码长度应大于6位").show();
            $('#password').focus();
            return;
        }else if($('.gender input').checked=='false'){
            $(".tips").html("请选择性别").show();
            $(this).focus();
            return;
        }else if(!$('#realName').val()){
            $(".tips").html("请输入姓名").show();
            $('#realName').focus();
            return;
        }else if($('#phoneNumber').val().length!=11){
            $(".tips").html("请输入正确的电话号码").show();
            $('#phoneNumber').focus();
            return;
        }else if(!$('#eamil').val()){
            $(".tips").html("请输入邮箱").show();
            $('#eamil').focus();
            return;
        }else if(!$('#address').val()){
            $(".tips").html("请输入地址").show();
            $('#address').focus();
            return;
        }else{
            //$(".tips").html('注册中...').show();
            $("#registerForm").submit();
        }
    }
</script>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
	<title>用户信息</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
</head>
<body>
<!--显示表单内容-->
<div>
    <s:form action="userAction_%{id == null ? 'add' : 'edit'}">
    	<s:hidden name="id"></s:hidden>
                <table>
                    <tr>
                    	<td>登录名：</td>
                        <td><s:textfield name="username" cssClass="InputStyle"/></td> 
                    </tr>
                     <tr>
                    	<td>姓名：</td>
                        <td><s:textfield name="realName" cssClass="InputStyle"/></td>
                    </tr>
					<tr>
						<td>性别：</td>
                        <td>
							<s:radio name="gender" list="{'男', '女'}"></s:radio>
						</td>
                    </tr>
					<tr>
						<td>联系电话：</td>
                        <td><s:textfield name="phoneNumber" cssClass="InputStyle"/></td>
                    </tr>
                    <tr>
                    	<td>E-mail：</td>
                        <td><s:textfield name="email" cssClass="InputStyle"/></td>
                    </tr>
                    <tr>
                    	<td>地址：</td>
                        <td><s:textfield name="address" cssClass="InputStyle"/></td>
                    </tr>
                </table>
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input type="image" src="${pageContext.request.contextPath}/style/images/save.png"/>
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/images/goBack.png"/></a>
        </div>
    </s:form>
</div>
</body>
</html>
    
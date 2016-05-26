<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
	<title>TopMenu</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
	<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/js/html5.js"></script>
	<![endif]-->
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
<style type="text/css">
	.weluser{ font-size:16px; color:#fff; margin-top:20px;}
</style>
</head>

<body CLASS=PageBody leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
	
<header>
  <h1><img src="images/admin_logo.png"/></h1>
  <ul class="rt_nav">
  	<li class="weluser">欢迎， ${user.username}</li>
    <li><a href="indexAction_index" target="_parent" class="website_icon">首页</a></li>
    <li><a target="right" href="userAction_infomation?id=${user.id }" class="admin_icon">个人信息</a></li>
    <li><a target="right" href="userAction_updatePasswordUI?id=${user.id }" class="admin_icon">修改密码</a></li>
    <li><a target="right" href="collectionsAction_collectionsList" class="set_icon">我的收藏</a></li> 
    <li><a target="_parent" href="loginLogoutAction_logout" class="quit_icon">安全退出</a></li>
  </ul>
</header>
</body>

</html>

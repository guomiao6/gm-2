<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.gm.entity.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<%
//Web上下文路径  /SpringMVC_Hibernate_001
String path = request.getContextPath();
//应用根地址 http://localhost:8080/SpringMVC_Hibernate_001
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
request.setAttribute("basePath", basePath);
%>
<script type="text/javascript" src="<%=basePath %>/front/jquery-1.8.2.js"></script>
<script type="text/javascript" src="<%=basePath %>/front/jquery-ui.js"></script>
<!-- <link href="front/bootstrap.min.css" rel="stylesheet"> -->
<link href="front/bootstrap-combined.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="front/bootstrap.min.js"></script>
<!-- 登录 -->
<script>
$(function(){
	//登录按钮
	$("#login").click(function(){
		var username = $("#loginUsername").val();
		var password = $("#loginPassword").val();
		var url = "login.act";
		var args = {"username":username,"password":password};
		if(username == undefined||password == undefined)
		{
			alert("不能为空");
		}
		else
		{
			$.post(url, args, function(data){
		
				if(data == "success")
				{
					location.reload(true);
					
				}
				else
				{
					alert("用户名或密码错误");
				}
			});
		}
		return false;
	});
	//注销按钮
	$("#logout").click(function()
	{
		var url = this.href;
		var args = {};
		$.post(url, args ,function(data){
			if(data == "success")
			{
				location.reload(true);
			}
			else
			{
				alert("注销失败！");
			}
		});
		return false;
	});
});
</script>
</head>
<body>
	<div class="navbar navbar-inverse">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-target=".navbar-responsive-collapse"
					data-toggle="collapse"></a> <a class="brand" href="#"><img
					src="img/guomiao.png" style="height: 60"></a><br>
				<div class="nav-collapse collapse navbar-responsive-collapse">
					<ul class="nav" style="font-size: 30px;">
						<li id="homePage"><a href="homePage.act">主页</a></li>
						<li id="flashGamePage"><a href="flashGameHomePage.act">flash游戏</a></li>
						<li id="U3DGamePage"><a href="U3DGameHomePage.act">U3D游戏</a></li>
						<li id="blogPage"><a href="blogHomePage.act">Blog</a></li>
						<li id="messageBoardPage"><a href="messageBoard.act">留言板</a></li>
					</ul>
					<!-- 设置激活的分栏 -->
					<script>
						$(function(){
							var currentPage = $("#currentPage").val();
							if(currentPage != undefined)
							{
								$("#"+currentPage).addClass("active");
							}
						});
					</script>
					<ul class="nav pull-right" style="font-size: 30px;">
						<c:if test="${empty sessionScope.user }">
							<li><a id="modal-464878" href="#modal-container-464878"
								role="button" class="btn-primary" data-toggle="modal"><b>登录</b></a>
							</li>
							<li class="divider-vertical"></li>
						</c:if>
						<c:if test="${not empty sessionScope.user }">
							<li class="dropdown">
									 <a data-toggle="dropdown" class="dropdown-toggle" href="#"><%=((User)session.getAttribute("user")).getNickname() %><strong class="caret"></strong></a>
									<ul class="dropdown-menu" style="line-height: 50px;font-size: 20px">
										<li>
											<a href="modifyInfoPage.act">修改信息</a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="logout.act" id="logout">注销</a>
										</li>
									</ul>
								</li>
						</</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
		<div id="modal-container-464878" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3 id="myModalLabel">
					登录
				</h3>
				
			</div>
			<div class="modal-body">
				<p>
					<form class="form-horizontal" role="form">
						<div class="form-group" style="font-size: 20;text-align: center;">
							<h3>用户名：<input type="text" id="loginUsername" class="form-control input-lg" style="height: 30px"></h3>
							<h3>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" id="loginPassword" class="form-control input-lg" style="height: 30px"></h3><br>
							没有帐号？<a href="registerPage.act">注册帐号</a><br><br>
							<a href="#">管理员入口</a>
						</div>
					</form>
				</p>
			</div>
			<div class="modal-footer">
				 <button class="btn btn-lg" data-dismiss="modal" aria-hidden="tue">关闭</button> <button class="btn btn-primary btn-lg" id="login">登录</button>
			</div>
		</div>
	
				
</body>

</html>
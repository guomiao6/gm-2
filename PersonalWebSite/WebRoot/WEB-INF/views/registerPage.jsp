<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>

</head>
<body>
	<div class="container-fluid col-lg-10 col-lg-offset-1 col-md-12 col-sm-12">
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<%@include file="navigation.jsp"%>
					<div class="alert">
					 <button type="button" class="close" data-dismiss="alert">×</button>
						<h4>
							提示!
						</h4> <strong>警告!</strong> 所有空格将被忽略
					</div>
					<div class="container-fluid col-lg-6 col-lg-offset-4 col-md-6 col-md-offset-4 col-sm-6 col-sm-offset-4">
						<form:form cssClass="form-horizontal" action="register.act" method="post" modelAttribute="user">
							<div class="form-group" style="font-size: 20;text-align: left;">
								<h3>
									用&nbsp;&nbsp;户&nbsp;&nbsp;名：<form:input cssClass="form-control input-lg"
										style="height: 30px" placeholder="必须由字母和数字组成" path="username"/>
									<form:errors path="username" style="color:red"></form:errors>
									<b style="color:red"><%=request.getAttribute("usernameError") == null? "": request.getAttribute("usernameError")%></b>
								</h3>
								<h3>
									昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：<form:input cssClass="form-control input-lg"
										style="height: 30px" path="nickname" placeholder="如果不添，将以用户名作为昵称"/>
									<b style="color:red"><%=request.getAttribute("nicknameError") == null? "": request.getAttribute("nicknameError")%></b>
								</h3>
								<h3>
									密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<form:password 
										cssClass="form-control input-lg" style="height: 30px" path="password" id="password"/>
									<form:errors path="password" style="color:red"></form:errors>
								</h3>
								<h3>
									重复密码：<input type="password" placeholder="重复刚才的密码"
										class="form-control input-lg" style="height: 30px" id="repeatPassword">
					
								</h3>
								<input type="reset" value="清空"
									class="btn  btn-large">&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" value="注册" id="submit"
									class="btn btn-info btn-large">
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- 验证两次输入的密码是否一致 -->
<script>
$(function(){
	$("#submit").click(function(){
		if($("#password").val() != $("#repeatPassword").val())
		{
			alert("两次输入的密码不一致");
			return false;
		}
		else
		{
			return true;
		}
	});
});
</script>
</body>
</html>
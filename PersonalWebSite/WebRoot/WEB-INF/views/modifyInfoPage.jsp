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
						<form:form cssClass="form-horizontal" action="modifyInfo.act" method="post" modelAttribute="modify">
							<div class="form-group" style="font-size: 20;text-align: left;">
								<h3>
									用&nbsp;&nbsp;户&nbsp;&nbsp;名：<form:input cssClass="form-control input-lg"
										style="height: 30px" placeholder="必须由字母和数字组成" path="username" disabled="true"/>
									<form:errors path="username" style="color:red"></form:errors>
									<b style="color:red"><%=request.getAttribute("usernameError") == null? "": request.getAttribute("usernameError")%></b>
								</h3>
								<h3>
									昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：<form:input cssClass="form-control input-lg"
										style="height: 30px" path="nickname" placeholder="如果不添，将以用户名作为昵称"/>
									<b style="color:red"><%=request.getAttribute("nicknameError") == null? "": request.getAttribute("nicknameError")%></b>
								</h3>
								<h3>
									原&nbsp;&nbsp;密&nbsp;&nbsp;码：<input type="password" placeholder="您修改信息的依据，必填"
										class="form-control input-lg" style="height: 30px" id="oldPassword"/>
								</h3>
								<h3>
									新&nbsp;&nbsp;密&nbsp;&nbsp;码：<form:password placeholder="如果无需修改密码，请留空"
										cssClass="form-control input-lg" style="height: 30px" path="password" id="password"/>
								</h3>
								<h3>
									重复密码：<input type="password" placeholder="重复刚才的密码"
										class="form-control input-lg" style="height: 30px" id="repeatPassword">
					
								</h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" value="修改"
									class="btn btn-info btn-large" id="modifySubmit">
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
$(function(){
	$("#modifySubmit").click(function(){
		//验证两次密码是否一致
		if($("#password").val() != $("#repeatPassword").val())
		{
			alert("两次密码输入不一致！");
			return false;
		}
		var passwordIsRight = false;
		var oldPassword = $("#oldPassword").val();
		var username = $("#username").val();
		var url = "validateOldPassword.act";
		var args = {"oldPassword":oldPassword,"username":username};
		$.ajax({
			type:"POST",
			url:url,
			data:args,
			success:function(data){
				if(data == "success")
				{
					passwordIsRight = true;
				}
				else
				{
					alert("原密码输入错误！")
					passwordIsRight = false;
				}
			},
			async:false
		});
		if(passwordIsRight == true)
		{
			return true;
		}
		else
		{
			return false;
		}
	});
});
</script>
</html>
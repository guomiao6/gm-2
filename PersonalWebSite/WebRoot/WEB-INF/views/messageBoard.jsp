<%@page import="com.gm.entity.Message"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

</head>
<body>
<!-- 标识当前页面是哪个分栏的隐藏域 -->
<input type="hidden" id="currentPage" value="messageBoardPage"/>
	<div
		class="container-fluid col-lg-10 col-lg-offset-1 col-md-12 col-sm-12">
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<%@include file="navigation.jsp"%>
					<div class="container-fluid col-lg-12 col-md-12 col-sm-12">
						<h3>在这里留言</h3>
						<form:form cssClass="form" action="submitMessage.act"
							modelAttribute="message">
							<form:textarea path="content" rows="3" cols="80" maxlength="100"
								placeholder="请勿超过100个字符。若您还没有登录，留言会以游客身份记录。"
								cssClass="form-controll col-lg-12 col-md-12 col-sm-12"
								autofocus="autofocus"
								style="font-size: 36px;line-height: 40px;resize:none" />
							<div style="text-align: right;"
								class="col-lg-11 col-md-11 col-sm-11">
								<input type="reset" class="btn btn-primary btn-lg " value="清空">
								<input type="submit" class="btn btn-primary btn-lg" value="提交">
							</div>
						</form:form>
					</div>
					<div class="container-fluid col-lg-12 col-md-12 col-sm-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title" style="font-size: 30px">留言板</h2>
							</div>
							<c:forEach begin="0" end="${messages.size() }" step="1"
								var="message" items="${messages }" varStatus="status">
								<c:if test="${status.index % 2 == 0}">
									<div class="panel-body">
										<h3>
											<b style="color: red">${message.user.nickname == null?"某神秘游客":message.user.nickname }</b>&nbsp;&nbsp;&nbsp;&nbsp;
											${message.createDate }&nbsp;&nbsp;&nbsp;&nbsp;
											<!-- 回复窗体触发 -->
											<a href="javascript:void(0)" onclick="replyClick(this)">回复</a>
											<input type="hidden" value="${message.no }" />
										</h3>
										<h3>${message.content }</h3>
										<!-- 这里是回复的消息 -->
										<c:forEach begin="0" end="${message.replies.size() }" step="1"
											var="replyMessage" items="${message.replies }" varStatus="replyStatus">
											<b style="color: red">${replyMessage.user.nickname == null?"某神秘游客":replyMessage.user.nickname } </b>于:&nbsp;&nbsp;&nbsp;&nbsp;
											${replyMessage.createTime } 回复到：&nbsp;&nbsp;&nbsp;&nbsp;
											<h4>${replyMessage.content }</h4>
										</c:forEach>
									</div>
								</c:if>
								<c:if test="${status.index % 2  == 1}">
									<div class="panel-footer">
										<h3>
											<b style="color: red">${message.user.nickname == null?"某神秘游客":message.user.nickname}</b>&nbsp;&nbsp;&nbsp;&nbsp;
											${message.createDate }&nbsp;&nbsp;&nbsp;&nbsp;
											<!-- 回复窗体触发 -->
											<a href="javascript:void(0)" onclick="replyClick(this)">回复</a>
											<input type="hidden" value="${message.no }" />
										</h3>
										<h3>${message.content }</h3>
										<!-- 这里是回复的消息 -->
										<c:forEach begin="0" end="${message.replies.size() }" step="1"
											var="replyMessage" items="${message.replies }" varStatus="replyStatus">
											<b style="color: red">${replyMessage.user.nickname == null?"某神秘游客":replyMessage.user.nickname } </b>于:&nbsp;&nbsp;&nbsp;&nbsp;
											${replyMessage.createTime } 回复到：&nbsp;&nbsp;&nbsp;&nbsp;
											<h4>${replyMessage.content }</h4>
										</c:forEach>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
					<div class="container-fluid col-lg-12 col-md-12 col-sm-12"
						style="text-align: center;">
						<div class="pagination pagination-large">
							<ul>
								<li><a
									href="messageBoard.act?page=${requestScope.pageIndex-1 <=0 ? 1 :  requestScope.pageIndex-1}">上一页</a></li>
								<li><a>${requestScope.pageIndex }/${requestScope.pageCount }</a></li>
								<li><a
									href="messageBoard.act?page=${requestScope.pageIndex+1 > requestScope.pageCount ? requestScope.pageCount : requestScope.pageIndex+1}">下一页</a></li>
							</ul>
						</div>
					</div>
					<!-- 这里用于触发时得到回复的对象 -->
					<script>
						function replyClick(obj) {
							var messageNo = $(obj).next().val();
							$("#messageNo").val(messageNo);
							$("#replyModal").modal("show");
						}
					</script>
					<!-- 这里是点击回复后触发的窗体 -->
					<div id="replyModal" class="modal hide fade" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h3 id="myModalLabel">回复信息</h3>
						</div>
						<!-- 窗体主体部分 -->
						<div class="modal-body">
							<div class="span12">
								<input id="messageNo" type="hidden" />
								<textarea rows="3" cols="50" id="replyMessage"
									placeholder="请勿超过100个字符。若您还没有登录，留言会以游客身份记录。"
									class="col-lg-12 col-md-12 col-sm-12"></textarea>
							</div>
						</div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
							<button id="reply" class="btn btn-primary" onclick="reply()">回复</button>
							<script>
								function reply() {
									var replyMessage = $("#replyMessage").val();
									var messageNo = $("#messageNo").val();
									var url = "replyMessage.act";
									var args = {
										"replyMessage" : replyMessage,
										"messageNo" : messageNo
									};
									$.post(url, args, function(data) {
										if (data == "success") {
											location.reload(true);
										} else {
											alert("回复失败！");
										}
									});
								}
							</script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
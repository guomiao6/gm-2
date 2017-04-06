<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>

</head>
<body>
<!-- 标识当前页面是哪个分栏的隐藏域 -->
<input type="hidden" id="currentPage" value="flashGamePage"/>
<div class="container-fluid col-lg-10 col-lg-offset-1 col-md-12 col-sm-12">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<%@include file="navigation.jsp" %>
				<div class="jumbotron well">
					<h1>
						<img src="<%=basePath %>/img/flashIcon.png">
						Flash游戏
					</h1>
					<p class="lead">
						这是一些使用Adobe Flash Professional CS6写的Flash小游戏，无需下载，可以点击进入之后直接在网页上玩。部分游戏较大，可能需要加载一会儿。
					</p>
				</div>
				<ul class="thumbnails">
					<li class="span4">
						<div class="thumbnail">
							<img width="300px" height="200px" src="<%=basePath %>/img/flashGameThumbnails/lol.png" />
							<div class="caption">
								<h3>
									lol卡牌配对
								</h3>
								<p>
									这是一个记忆型消除游戏，你需要不停地翻牌并努力记住每张牌的图案，只有当前后两次翻出牌的图案相同时，这两张牌才会消除。
								</p>
								<p>
									<a class="btn btn-primary" href="flashGamePlayPage.act?game=lol">进入</a>
								</p>
							</div>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img width="300px" height="200px" src="<%=basePath %>/img/flashGameThumbnails/bubble.png" />
							<div class="caption">
								<h3>
									灯泡记忆
								</h3>
								<p>
									这是一个记忆类小游戏，你需要记住灯泡发光的顺序并重复这个顺序。灯光发光时会有音乐提示，这有助于对顺序的判断。
								</p>
								<p>
									<a class="btn btn-primary" href="flashGamePlayPage.act?game=bubble">进入</a>
								</p>
							</div>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img width="300px" height="200px" src="<%=basePath %>/img/flashGameThumbnails/mouseMove.png" />
							<div class="caption">
								<h3>
									鼠标移动
								</h3>
								<p>
									这是一个考验控制鼠标能力的小游戏，你需要控制鼠标在白色区域从起点移动到终点。这个过程中只要触碰到了黑色区域就会立即结束游戏喔！
								</p>
								<p>
									<a class="btn btn-primary" href="flashGamePlayPage.act?game=mouseMove">进入</a>
								</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
</body>
</html>
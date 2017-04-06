<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>

</head>
<body>
<!-- 标识当前页面是哪个分栏的隐藏域 -->
<input type="hidden" id="currentPage" value="U3DGamePage"/>
<div class="container-fluid col-lg-10 col-lg-offset-1 col-md-12 col-sm-12">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<%@include file="navigation.jsp" %>
				<div class="jumbotron well">
					<h1>
						<img src="<%=basePath %>/img/unityIcon.png" height="70" width="70">
						U3D游戏
					</h1>
					<p class="lead">
						Unity引擎是一款跨平台的专业游戏引擎，在国内特别受到中小型企业的欢迎。使用此引擎
					可以开发出几乎所有类型的PC、Android及IOS游戏。这里部分游戏提供了Web端直接开始游戏
					的功能，但受游戏太大以及服务器带宽不足的限制，可能出现加载极慢的情况，建议您下载后再玩。
					</p>
				</div>
				<ul class="thumbnails">
					<li class="span4">
						<div class="thumbnail">
							<img width="300px" height="200px" src="<%=basePath %>/img/U3DGameThumbnails/nightmare1.png" />
							<div class="caption">
								<h3>
									噩梦射手
								</h3>
								<p>
									这是一个第三人称射击游戏。三种不同风格的怪物，卡通的环境，不同特效的道具，为你带来畅爽的射击体验。
								</p>
								<p>
									<a class="btn btn-primary" href="U3DNightmare.act">进入</a>
								</p>
							</div>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img width="300px" height="200px" src="<%=basePath %>/img/U3DGameThumbnails/dark1.png" />
							<div class="caption">
								<h3>
									黑暗奇侠
								</h3>
								<p>
									这是一个可以自由探索的RPG游戏，穿梭于阴暗的黑暗丛林中，忽明忽暗的路灯，未知的怪物，神秘的修炼台，以及救出女孩的使命，需要自己去探索。
								</p>
								<p>
									<a class="btn btn-primary" href="U3DDark.act">进入</a>
								</p>
							</div>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img width="300px" height="200px" src="<%=basePath %>/img/U3DGameThumbnails/cs2.png" />
							<div class="caption">
								<h3>
									红蓝3D CS（Demo）
								</h3>
								<p>
									这是一个可转3D红蓝的FPS游戏。佩戴上红蓝眼镜玩，可以产生如3D影院般的立体效果。具体的技术细节可以参看我的Blog。
								</p>
								<p>
									<a class="btn btn-primary" href="U3DCS.act">进入</a>
								</p>
							</div>
						</div>
					</li>
				</ul>
				<ul class="thumbnails">
					<li class="span4">
						<div class="thumbnail">
							<img width="300px" height="200px" src="<%=basePath %>/img/U3DGameThumbnails/candy1.png" />
							<div class="caption">
								<h3>
									糖果传奇
								</h3>
								<p>
									这是一款三消类的对对碰游戏。每次消除会使游戏进度增加，但时间的流逝会使游戏进度减少，你的反应能抵抗时间的流逝，顺利过关吗？
								</p>
								<p>
									<a class="btn btn-primary" href="U3DCandy.act">进入</a>
								</p>
							</div>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img width="300px" height="200px" src="<%=basePath %>/img/U3DGameThumbnails/car2.png" />
							<div class="caption">
								<h3>
									Car Racing
								</h3>
								<p>
									这是一款Android版的赛车游戏。通过重力感应来控制车的行进，还可以通过点击屏幕来切换不同的视角。
								</p>
								<p>
									<a class="btn btn-primary" href="U3DCar.act">进入</a>
								</p>
							</div>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img width="300px" height="200px" src="<%=basePath %>/img/U3DGameThumbnails/run3.png" />
							<div class="caption">
								<h3>
									逃离地球（Demo）
								</h3>
								<p>
									这是一款Android端的跑酷类游戏。通过划动屏幕来控制人物躲避各种障碍。
								</p>
								<p>
									<a class="btn btn-primary" href="U3DRun.act">进入</a>
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
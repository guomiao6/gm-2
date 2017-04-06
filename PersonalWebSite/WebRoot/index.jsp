<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
</head>
<body>
	<!-- 标识当前页面是哪个分栏的隐藏域 -->
	<input type="hidden" id="currentPage" value="homePage"/>
	<div
		class="container-fluid col-lg-10 col-lg-offset-1 col-md-12  col-sm-12">
		<div class="container-fluid" style="display: table;">
			<div class="row-fluid" style="vertical-align: middle;">
				<div class="span12">
					<%@include file="WEB-INF/views/navigation.jsp"%>
					<div class="alert" style="text-align: center;">
						<button type="button" class="close" data-dismiss="alert">×</button>
						<h3>网站公告</h3>
						<h4>欢迎来到郭淼的个人网站，你可以注册一个账号来让我识别你的身份。</h4>
					</div>
					<div class="carousel slide" id="carousel-145926">
						<ol class="carousel-indicators">
							<li data-slide-to="0" data-target="#carousel-145926"></li>
							<li data-slide-to="1" data-target="#carousel-145926"
								class="active"></li>
							<li data-slide-to="2" data-target="#carousel-145926"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item">
								<a href="U3DDark.act"><img src="img/1.png" /></a>
								<div class="carousel-caption">
									<h4>黑暗奇侠</h4>
									<p>
										这是一个可以自由探索的RPG游戏，穿梭于阴暗的黑暗丛林中，忽明忽暗的路灯，未知的怪物，神秘的修炼台，以及救出女孩的使命，需要自己去探索。
									</p>
								</div>
							</div>
							<div class="item active">
								<a href="U3DNightmare.act"><img src="img/2.png" /></a>
								<div class="carousel-caption">
									<h4>噩梦射手</h4>
									<p>这是一个第三人称射击游戏。三种不同风格的怪物，卡通的环境，不同特效的道具，为你带来畅爽的射击体验。</p>
								</div>
							</div>
							<div class="item">
								<a href="flashGamePlayPage.act?game=lol"><img src="img/3.png" /></a>
								<div class="carousel-caption">
									<h4>LOL卡牌配对</h4>
									<p>
										这是一款卡牌配对消除的游戏。选自LOL中英雄的头像，需要将两个相同图案的同时翻转过来才能消除，你的记忆力可行吗？</p>
								</div>
							</div>
						</div>
						<a data-slide="prev" href="#carousel-145926"
							class="left carousel-control">‹</a> <a data-slide="next"
							href="#carousel-145926" class="right carousel-control">›</a>
					</div>
					<ul class="thumbnails">
						<li class="span4">
							<div class="thumbnail">
								<div class="caption">
									<h3>Flash游戏</h3>
									<img alt="300x200" src="img/flashGameThumbnails/bubble.png" />
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用AdobeFlash编写的Flash游戏，可以在任何加载了flash player插件的浏览器上在线试玩。
									</p>
									<br> <br>
									<p>
										<a class="btn btn-primary" href="flashGameHomePage.act">进入模块</a>
									</p>
								</div>
							</div>
						</li>
						<li class="span4">
							<div class="thumbnail">
								<div class="caption">
									<h3>U3D游戏</h3>
									<img alt="300x200" src="img/U3DGameThumbnails/cs1.png" />
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用Unity引擎开发的PC及Android游戏，部分游戏可以下载Unity Player后在浏览器试玩。所有游戏都提供了第三方下载链接。
									</p>
									<br>
									<p>
										<a class="btn btn-primary" href="U3DGameHomePage.act">进入模块</a>
									</p>
								</div>
							</div>
						</li>
						<li class="span4">
							<div class="thumbnail">
								<div class="caption">
									<h3>Blog</h3>
									<img alt="300x200" src="img/blogIcon.png" />
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这里有站主分享的一些电脑使用技巧，带你更好地“玩转”计算机。
									</p>
									<p>
										<a class="btn btn-primary" href="blogHomePage.act">进入模块</a>
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
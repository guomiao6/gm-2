<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<script type="text/javascript" src="front/jquery-1.8.2.js"></script>
<script type="text/javascript" src="front/jquery-ui.js"></script>
<link href="front/bootstrap-combined.min.css" rel="stylesheet"
	media="screen">
<script type="text/javascript" src="front/bootstrap.min.js"></script>
</head>
<body>
	<div
		class="container-fluid col-lg-10 col-lg-offset-1 col-md-12  col-sm-12">
		<div class="container-fluid" style="display: table;">
			<div class="row-fluid" style="vertical-align: middle;">
				<div class="span12">
					<%@include file="../navigation.jsp"%>
					<div class="hero-unit" style="text-align: center;">
						<h1>Car Racing</h1>
					</div>
					<div class="alert" style="text-align: center;">
						<button type="button" class="close" data-dismiss="alert">×</button>
						<h4>为节省服务器带宽，所有下载链接均指向第三方站点。</h4>
					</div>
					<div class="page-header">
						<h2>开始游戏</h2>
						<div class="row-fluid">
							<div class="span4">
								<button class="btn btn-warning btn-block btn-large disabled"
									type="button">在线游戏</button>
							</div>
							<div class="span4">
								<button class="btn btn-warning btn-block btn-large disabled"
									type="button">Windows下载</button>
							</div>
							<div class="span4">
								<a class="btn btn-warning btn-block btn-large"  target="_blank"
									type="button" href="http://pan.baidu.com/s/1geJ5ez5">Android下载</a>
							</div>
						</div>
					</div>
					<div class="page-header">
						<h2>游戏截图</h2>
						<div class="carousel slide" id="carousel-145926">
							<ol class="carousel-indicators">
								<li data-slide-to="0" data-target="#carousel-145926"
									class="active"></li>
								<li data-slide-to="1" data-target="#carousel-145926"></li>
								<li data-slide-to="2" data-target="#carousel-145926"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item">
									<img src="img/U3DGameThumbnails/car3.png" />
								</div>
								<div class="item active">
									<img src="img/U3DGameThumbnails/car1.png" />
								</div>
								<div class="item">
									<img src="img/U3DGameThumbnails/car2.png" />
								</div>
							</div>
							<a data-slide="prev" href="#carousel-145926"
								class="left carousel-control">‹</a> <a data-slide="next"
								href="#carousel-145926" class="right carousel-control">›</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
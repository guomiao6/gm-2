<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>

</head>
<body>
<!-- 标识当前页面是哪个分栏的隐藏域 -->
<input type="hidden" id="currentPage" value="blogPage"/>
<div class="container-fluid col-lg-10 col-lg-offset-1 col-md-12 col-sm-12">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<%@include file="navigation.jsp" %>
				<div class="jumbotron well">
					<h1>
						Blog
					</h1>
					<p class="lead">
						这里，分享如何更好地玩转电脑的小技巧！
					</p>
				</div>
				<div class="panel panel-default">
				<div class="panel-heading">
					<h2 class="panel-title" style="font-size: 30px">
						Blogs
					</h2>
				</div>
				<div class="panel-body">
					<h4>2016-5-29</h4>
					<h3><a href="movieBlog.act">一个最有效的寻找电影资源的方法</a></h3>
				</div>
				<div class="panel-footer">
					<h4>2016-5-29</h4>
					<h3><a href="avoidAdBlog.act">如何避免加载弹窗广告</a></h3>
				</div>
				<div class="panel-body">
					<h4>2016-5-29</h4>
					<h3><a href="modifyPageDataBlog.act">使网页数据看起来很劲爆的方法</a></h3>
				</div>
				<div class="panel-footer">
					<h4>2016-5-29</h4>
					<h3><a href="RedAndBlueBlog.act">成本最低的3D立体观看方法</a></h3>
				</div>
			</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
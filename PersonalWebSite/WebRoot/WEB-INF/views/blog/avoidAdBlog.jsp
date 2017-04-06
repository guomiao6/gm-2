<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>

</head>
<body>
	<div
		class="container-fluid col-lg-10 col-lg-offset-1 col-md-12 col-sm-12">
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<%@include file="../navigation.jsp"%>
					<div class="jumbotron well">
					<h3 style="text-align: center;">如何避免加载弹窗广告</h3>
					<h4>1、在打开一些网站的时候，经常会碰到烦人的弹窗广告。不仅影响浏览体验，而且游戏界面的声音还十分烦人，那么如何避免加载这些弹窗广告呢？</h4>
					<img src="blog/avoidAdBlog.files/image001.png" width="750" height="375">
					<h4>2、其实方法很简单，只需要在网站的主体内容加载出来之后，立马按“停止加载按钮”或键盘上的“esc键”即可。这时其实主要链接都可以正常打开，主体功能也都可以使用，但不用再担心有弹窗问题了。</h4>
					<img src="blog/avoidAdBlog.files/image002.png" width="750" height="375">
					<h4>3、从一个网站设计者的层面解释原因：</h4>
					<h4>在加载网页时，设计者首先应该保证网站主体先加载出来，然后再加载广告。而HTML页面是逐行加载的。故设计者会把与弹窗有关的标签放在页面下方（通常是第三方提供的JavaScript脚本）。所以如果即时停止加载页面就可以阻止它的加载。</h4>
					<h4>但也许你会想，如何恰好能在加载到下面这个区域之前停住呢？其实由于这个JavaScript脚本来自第三方链接，例如下面就是一个链接的方式加载。而链接由于其存在域名的DNS解析问题，所以加载速度会很慢，也就是你中间有足够的“反映时间”去停止加载广告。</h4>
					<img src="blog/avoidAdBlog.files/image003.png" width="750" height="375">
					<h4>4、更好的屏蔽广告方式：
可以百度搜索ABP插件，个人已知的此插件在Firefox及 Chrome浏览器上支持得比较好，它可以智能识别很多广告内容从而屏蔽掉。
					</h4>
					<h4>5、推荐：
当前世界上主流的5大内核浏览器：Chrome（谷歌的浏览器，轻巧简便），Firefox（火狐），IE，Safari（苹果系统专用），Opera（欧朋）。而至于什么360安全浏览器，QQ浏览器，百度浏览器之流，大多都是使用了IE内核或整合了双核，再加以外壳方面的包装，不推荐使用。
					</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
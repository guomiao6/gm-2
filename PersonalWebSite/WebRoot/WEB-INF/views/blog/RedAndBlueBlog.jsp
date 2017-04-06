<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>

</head>
<body>
<div class="container-fluid col-lg-10 col-lg-offset-1 col-md-12 col-sm-12">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<%@include file="../navigation.jsp" %>
				<div class="jumbotron well">
					<h3 style="text-align: center;">成本最低的3D立体观看方法</h3>
					<h4>1、所有的3D电影的播放思路都是：（1）左右眼看同一点看到不同的画面；（2）屏幕上不同的点，左右眼画面的偏移不同，从而不同地方的远近感不同。在这两点的基础上，人眼（准确地说是大脑）就产生了立体感。</h4>
					<h4>2、下面要介绍的这种3D技术叫做红蓝3D技术，是成本最低的3D技术，只需要一副价格不超过10元的3D红蓝眼镜（也可以自制）和任何普通的显示器就可以了。</h4>
					<h4>3、自制红蓝眼镜的方法可以看下面的链接，但个人感觉淘宝买一个不仅便宜还制作精良。<a href="http://www.3dinnet.com/a/2014/tiro/0926/9169.html">链接</a></h4>
					<h4>4、寻找红蓝资源的方法：网上搜红蓝3D，可以得到各种各样的图片、电影资源。</h4>
					<h4>5、自制红蓝3D图片的方法：使用这种方法，只需要一个普通的手机相机就可以记录下任何一个地方的3D图片，或者说，拍摄3D红蓝照片的方法：</h4>
					<h4>（1）、随便用手机或相机拍摄一张照片。</h4>
					<h4>（2）、将手机略微平移一段距离拍下第二张照片。</h4>
					<img src="blog/RedAndBlueBlog/image001.jpg" width="500" height="375">
					<img src="blog/RedAndBlueBlog/image002.jpg" width="500" height="375">
					<h4>（3）、将两张照片使用PS进行处理：</h4>
					<h4>将两张图片重叠在一起，并将右眼视角的图片置于上层，打开图片混合选项，在通道中取消红色(R)的勾选。然后微调上层图片位置(向右调节)，裁去两边单层的图像。拼合图像即可完成，如样片。</h4>
					<img src="blog/RedAndBlueBlog/image003.jpg" width="750" height="375">
					<h4>混合后的图片是这样的，戴上3D红蓝眼镜就可以产生立体效果。</h4>
					<img src="blog/RedAndBlueBlog/image004.png" width="500" height="375">
					<h4>6、本网站中的CS 游戏就是使用这一原理开发的。将原场景中的一台Camera变为两台平行且略微偏移的Camera，之后使用类似上述的图像合成技术进行两台Camera的画面合成，就形成了一个立体游戏。</h4>
					<img src="blog/RedAndBlueBlog/image005.png" width="750" height="375">
					<h4>7、这项技术的最大缺陷是，长时间佩戴红蓝眼镜，眼睛会不舒服。所以这项技术只能用于体验，在实践中用处不大。</h4>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
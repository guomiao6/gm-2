<%@ page contentType="text/html; charset=UTF-8" %>
<html>

<head>

</head>
<body>
<div class="container-fluid col-lg-10 col-lg-offset-1 col-md-12 col-sm-12">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<%@include file="navigation.jsp" %>
				<script src="front/swfobject_modified.js" type="text/javascript"></script>
				<div class="progress progress-striped active">
					<div class="bar">
					</div>
				</div>
				<div align="center">
					<object align="middle" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="800" height="544" id="FlashID" accesskey="b" tabindex="a" title="LOL">
					  <param name="movie" value="lol.swf" />
					  <param name="quality" value="high" />
					  <param name="wmode" value="opaque" />
					  <param name="swfversion" value="15.0.0.0" />
					  <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
					  <param name="expressinstall" value="front/expressInstall.swf" />
					  <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
					  <!--[if !IE]>-->
					  <object align="middle" type="application/x-shockwave-flash" data="flash/<%=request.getAttribute("game") %>.swf" width="800" height="544">
					    <!--<![endif]-->
					    <param name="quality" value="high" />
					    <param name="wmode" value="opaque" />
					    <param name="swfversion" value="15.0.0.0" />
					    <param name="expressinstall" value="Scripts/expressInstall.swf" />
					    <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
					    <div>
					      <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
					      <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
					    </div>
					    <!--[if !IE]>-->
					  </object>
					  <!--<![endif]-->
					</object>
				</div>
				<script type="text/javascript">
				swfobject.registerObject("FlashID");
				</script>
			</div>
		</div>
	</div>
</div>
</body>
</html>
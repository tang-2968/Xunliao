<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8" />
	<title>消息上墙-微聊</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-touch-fullscreen" content="yes">
	<meta http-equiv="Access-Control-Allow-Origin" content="*">
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="css/swiper-3.4.1.min.css" />
	<link rel="stylesheet" href="css/layout.css" />
	<link rel="stylesheet" href="css/weui.css" />
	
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/zepto.min.js"></script>
	<script src="js/fontSize.js"></script>
	<script src="js/swiper-3.4.1.min.js"></script>
	<script src="js/wcPop/wcPop.js"></script>
	<script src="js/weui.min.js"></script>
	
</head>
<body>
	
	<!-- <>微聊主容器 -->
	<div class="wechat__panel clearfix">
		<div class="wc__chat-wrapper flexbox flex__direction-column">
			<!-- //顶部 -->
			<div class="wc__headerBar fixed">
				<div class="inner flexbox">
					<a class="back splitline" href="javascript:;" onClick="history.back(-1);"></a>
					<h2 class="barTit flex1">张小龙</h2>
					<a class="barIco u-one" href="javascript:;"></a>
				</div>
			</div>
			<!-- //微聊消息上墙面板 -->
			<div class="wc__chatMsg-panel flex1">
				<div class="chatMsg-cnt">
					<ul class="clearfix" id="J__chatMsgList">
						<li class="notice"><span>你已经添加了张小龙，现在可以开始聊天了。</span></li>
						<li class="time"><span>2017年12月31日 晚上22:30</span></li>
						<!-- 别人-->
						<li class="others">
							<a class="avatar" href="haoyouzhuye.html"><img src="img/uimg/u__chat-img04.jpg" /></a>
							<div class="content">
								<div class="msg">
									hello 美女，晚上好，最近过的还好吧！！！ <img class="face" src="img/emotion/face01/10.png"><img class="face" src="img/emotion/face01/63.png"><img class="face" src="img/emotion/face01/75.png">
								</div>
							</div>
						</li>
						<!--自己-->
						<li class="me">
							<div class="content">
								<div class="msg">
									么么哒，张总发个红包呗！<img class="face" src="img/emotion/face01/92.png">
								</div>
							</div>
							<a class="avatar" href="haoyouzhuye.html"><img src="img/uimg/u__chat-img14.jpg" /></a>
						</li>
						<li class="others">
							<a class="avatar" href="haoyouzhuye.html"><img src="img/uimg/u__chat-img04.jpg" /></a>
							<div class="content">
								<div class="msg">
									晚上好，我还在景区度假呢，去谈了一个项目！ <img class="face" src="img/emotion/face01/61.png">
								</div>
							</div>
						</li>
						<li class="others">
							<a class="avatar" href="haoyouzhuye.html"><img src="img/uimg/u__chat-img04.jpg" /></a>
							<div class="content">
								<div class="msg picture">
									<img class="img__pic" src="img/placeholder/wchat__img03.jpg" />
								</div>
							</div>
						</li>
						<li class="time"><span>1月1日 早上02:00</span></li>
						<li class="others">
							<a class="avatar" href="haoyouzhuye.html"><img src="img/uimg/u__chat-img04.jpg" /></a>
							<div class="content">
								<div class="msg">
									又到了夜深人静的时候，好安静。<img class="face" src="img/emotion/face01/30.png">
								</div>
							</div>
						</li>
						<li class="me">
							<div class="content">
								<div class="msg">
									这么晚还么睡啊！<img class="face" src="img/emotion/face01/74.png">
								</div>
							</div>
							<a class="avatar" href="haoyouzhuye.html"><img src="img/uimg/u__chat-img14.jpg" /></a>
						</li>
						<li class="me">
							<div class="content">
								<div class="msg video">
									<img class="img__video" src="img/placeholder/wchat__video01-poster.jpg" videoUrl="img/placeholder/wchat__video01-Y7qk5uVcNcFJIY8O4mKzDw.mp4" />
								</div>
							</div>
							<a class="avatar" href="haoyouzhuye.html">
								<img src="img/uimg/u__chat-img14.jpg" />
							</a>
						</li>
						<li class="time"><span>2月25日 早上09:48</span></li>
						<li class="others">
							<a class="avatar" href="haoyouzhuye.html"><img src="img/uimg/u__chat-img04.jpg" /></a>
							<div class="content">
								<div class="msg">
									早上好，这次微聊线下活动的视频及PPT预计明天可以公开啦 <img class="face" src="img/emotion/face01/4.png">
								</div>
							</div>
						</li>
						<li class="time"><span>"张小龙" 撤回了一条消息</span></li>
						<li class="others">
							<a class="avatar" href="haoyouzhuye.html"><img src="img/uimg/u__chat-img04.jpg" /></a>
							<div class="content">
								<div class="msg video">
									<img class="img__video" src="img/placeholder/wchat__video02-poster.jpg" videoUrl="img/placeholder/wchat__video02-Y7qk5uVcNcFJIY8O4mKzDw.mp4" />
								</div>
							</div>
						</li>
						<li class="me">
							<div class="content">
								<div class="msg picture">
									<img class="img__pic" src="img/placeholder/wchat__img01.jpg" />
								</div>
							</div>
							<a class="avatar" href="haoyouzhuye.html"><img src="img/uimg/u__chat-img14.jpg" /></a>
						</li>
						<li class="me">
							<div class="content">
								<div class="msg">
									无聊( ⊙o⊙ )哇，自己爆照一张，我是有多自恋，哈哈哈！<img class="face" src="img/emotion/face01/72.png">
								</div>
							</div>
							<a class="avatar" href="haoyouzhuye.html"><img src="img/uimg/u__chat-img14.jpg" /></a>
						</li>
					</ul>
				</div>
			</div>
	
			<!-- //微聊底部功能面板 -->
			<div class="wc__footTool-panel">
				<!-- 输入框模块 -->
				<div class="wc__editor-panel wc__borT flexbox">
					<div class="wrap-editor flex1"><div class="editor J__wcEditor" contenteditable="true" style="-webkit-user-select:auto;"></div></div>
					<i class="btn btn-emotion"></i>
					<i class="btn btn-choose"></i>
					<button class="btn-submit J__wchatSubmit">发送</button>
				</div>

				<!-- 表情、选择模块 -->
				<div class="wc__choose-panel wc__borT" style="display: none;">
					<!-- 表情区域 -->
					<div class="wrap-emotion" style="display: none;">
						<div class="emotion__cells flexbox flex__direction-column">
							<div class="emotion__cells-swiper flex1" id="J__swiperEmotion">
								<div class="swiper-container">
									<div class="swiper-wrapper"></div>
									<div class="pagination-emotion"></div>
								</div>
							</div>
							<div class="emotion__cells-footer" id="J__emotionFootTab">
								<ul class="clearfix">
									<li class="swiperTmpl cur" tmpl="swiper__tmpl-emotion01"><img src="img/emotion/face01/face-lbl.png" alt=""></li>
									<li class="swiperTmpl" tmpl="swiper__tmpl-emotion02"><img src="img/emotion/face02/face-lbl.gif" alt=""></li>
									<li class="swiperTmpl" tmpl="swiper__tmpl-emotion03"><img src="img/emotion/face03/face-lbl.gif" alt=""></li>
									<li class="swiperTmpl" tmpl="swiper__tmpl-emotion04"><img src="img/emotion/face04/face-lbl.gif" alt=""></li>
									<li class="swiperTmpl" tmpl="swiper__tmpl-emotion05"><img src="img/emotion/face05/face-lbl.gif" alt=""></li>
									<li class="swiperTmpl" tmpl="swiper__tmpl-emotion06"><img src="img/emotion/face06/face-lbl.gif" alt=""></li>
									<li class="swiperTmplSet"><img src="img/wchat/icon__emotion-set.png" alt=""></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- 选择区域 -->
					<div class="wrap-choose" style="display: none;">
						<div class="choose__cells">
							<ul class="clearfix">
								<li><a class="J__wchatZp" href="javascript:;"><span class="img"><img src="img/wchat/icon__choose-zp.png" /><input type="file" accept="image/*" /></span><em>照片</em></a></li>
								<li><a class="J__wchatSp" href="javascript:;"><span class="img"><img src="img/wchat/icon__choose-sp.png" /><input type="file" accept="video/*" /></span><em>视频</em></a></li>
								<li><a class="J__wchatHb" href="javascript:;"><span class="img"><img src="img/wchat/icon__choose-hb.png" /></span><em>红包</em></a></li>
								<li><a class="J__wchatSc" href="javascript:;"><span class="img"><img src="img/wchat/icon__choose-sc.png" /></span><em>我的收藏</em></a></li>
								<li><a class="J__wchatWj" href="javascript:;"><span class="img"><img src="img/wchat/icon__choose-wj.png" /></span><em>文件</em></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- …… 图片预览弹窗.Start -->
	<div class="wc__popup-imgPreview" style="display: none;">
		<div class="swiper-container J__swiperImgPreview">
			<div class="swiper-wrapper"></div>
			<!-- <div class="swiper-pagination pagination-imgPreview"></div> -->
		</div>
	</div>
	<script type="text/javascript">
		var curIndex = 0, imgPreviewSwiper;
		$("#J__chatMsgList li").on("click", ".picture", function(){
			var html = "",  _src = $(this).find("img").attr("src");

			$("#J__chatMsgList li .picture").each(function(i, item){
				html += '<div class="swiper-slide"><div class="swiper-zoom-container">'+ $(this).html() +'</div></div>';
				if($(this).find("img").attr("src") == _src){
					curIndex = i;
				}
			});
			$(".J__swiperImgPreview .swiper-wrapper").html(html);
			$(".wc__popup-imgPreview").show();

			imgPreviewSwiper = new Swiper('.J__swiperImgPreview',{
				pagination: false,
				paginationClickable: true,
				zoom: true,
				observer: true,
				observeParents: true,
				initialSlide: curIndex
			});
		});
		// 关闭预览
		$(".wc__popup-imgPreview").on("click", function(e){
			var that = $(this);
			imgPreviewSwiper.destroy(true, true);
			$(".J__swiperImgPreview .swiper-wrapper").html('');
			that.hide();
		});
	</script>
	<!-- …… 图片预览弹窗.End -->

	<!-- …… 视频预览弹窗.Start -->
	<div class="wc__popup-videoPreview" style="display: none;">
		<i class="wc__videoClose"></i>
		<video id="J__videoPreview" width="100%" height="100%" controls="controls" x5-video-player-type="h5" x5-video-player-fullscreen="true" webkit-playsinline preload="auto"></video>
	</div>
	<script type="text/javascript">
		var video = document.getElementById("J__videoPreview");
		$("#J__chatMsgList li").on("click", ".video", function(){
			video.src = $(this).find("img").attr("videoUrl");
			$(".wc__popup-videoPreview").show();
			if(video.paused){
				video.play();
			}else{
				video.pause();
			}
		});
		video.addEventListener("ended", function(){
			video.currentTime = 0;
		}, false);
		// 关闭预览
		$(".wc__popup-videoPreview").on("click", ".wc__videoClose", function(){
			$(".wc__popup-videoPreview").hide();
			video.currentTime = 0;
			video.pause();
		});

		// 进入全屏、退出全屏
		video.addEventListener("x5videoenterfullscreen", function(){
			console.log("进入全屏");
		}, false);
		video.addEventListener("x5videoexitfullscreen", function(){
			$(".wc__popup-videoPreview .wc__videoClose").trigger("click");
		}, false)
	</script>
	<!-- …… 视频预览弹窗.End -->

	<!-- …… 表情模板.Start -->
	<!-- //表情 -->
	<div class="swiper__tmpl-emotion01" style="display: none;">
		<div class="swiper-slide">
			<div class="face-list face__sm-list">
				<span><img class="face" src="img/emotion/face01/0.png" /></span>
				<span><img class="face" src="img/emotion/face01/1.png" /></span>
				<span><img class="face" src="img/emotion/face01/2.png" /></span>
				<span><img class="face" src="img/emotion/face01/3.png" /></span>
				<span><img class="face" src="img/emotion/face01/4.png" /></span>
				<span><img class="face" src="img/emotion/face01/5.png" /></span>
				<span><img class="face" src="img/emotion/face01/6.png" /></span>
				
				<span><img class="face" src="img/emotion/face01/7.png" /></span>
				<span><img class="face" src="img/emotion/face01/8.png" /></span>
				<span><img class="face" src="img/emotion/face01/9.png" /></span>
				<span><img class="face" src="img/emotion/face01/10.png" /></span>
				<span><img class="face" src="img/emotion/face01/11.png" /></span>
				<span><img class="face" src="img/emotion/face01/12.png" /></span>
				<span><img class="face" src="img/emotion/face01/13.png" /></span>
				
				<span><img class="face" src="img/emotion/face01/14.png" /></span>
				<span><img class="face" src="img/emotion/face01/15.png" /></span>
				<span><img class="face" src="img/emotion/face01/16.png" /></span>
				<span><img class="face" src="img/emotion/face01/17.png" /></span>
				<span><img class="face" src="img/emotion/face01/18.png" /></span>
				<span><img class="face" src="img/emotion/face01/19.png" /></span>
				<span><img class="del" src="img/wchat/icon__emotion-del.png" /></span>
			</div>
		</div>
		<div class="swiper-slide">
			<div class="face-list face__sm-list">
				<span><img class="face" src="img/emotion/face01/20.png" /></span>
				<span><img class="face" src="img/emotion/face01/21.png" /></span>
				<span><img class="face" src="img/emotion/face01/22.png" /></span>
				<span><img class="face" src="img/emotion/face01/23.png" /></span>
				<span><img class="face" src="img/emotion/face01/24.png" /></span>
				<span><img class="face" src="img/emotion/face01/25.png" /></span>
				<span><img class="face" src="img/emotion/face01/26.png" /></span>
				
				<span><img class="face" src="img/emotion/face01/27.png" /></span>
				<span><img class="face" src="img/emotion/face01/28.png" /></span>
				<span><img class="face" src="img/emotion/face01/29.png" /></span>
				<span><img class="face" src="img/emotion/face01/30.png" /></span>
				<span><img class="face" src="img/emotion/face01/31.png" /></span>
				<span><img class="face" src="img/emotion/face01/32.png" /></span>
				<span><img class="face" src="img/emotion/face01/33.png" /></span>
				
				<span><img class="face" src="img/emotion/face01/34.png" /></span>
				<span><img class="face" src="img/emotion/face01/35.png" /></span>
				<span><img class="face" src="img/emotion/face01/36.png" /></span>
				<span><img class="face" src="img/emotion/face01/37.png" /></span>
				<span><img class="face" src="img/emotion/face01/38.png" /></span>
				<span><img class="face" src="img/emotion/face01/39.png" /></span>
				<span><img class="del" src="img/wchat/icon__emotion-del.png" /></span>
			</div>
		</div>
		<div class="swiper-slide">
			<div class="face-list face__sm-list">
				<span><img class="face" src="img/emotion/face01/40.png" /></span>
				<span><img class="face" src="img/emotion/face01/41.png" /></span>
				<span><img class="face" src="img/emotion/face01/42.png" /></span>
				<span><img class="face" src="img/emotion/face01/43.png" /></span>
				<span><img class="face" src="img/emotion/face01/44.png" /></span>
				<span><img class="face" src="img/emotion/face01/45.png" /></span>
				<span><img class="face" src="img/emotion/face01/46.png" /></span>
				
				<span><img class="face" src="img/emotion/face01/47.png" /></span>
				<span><img class="face" src="img/emotion/face01/48.png" /></span>
				<span><img class="face" src="img/emotion/face01/49.png" /></span>
				<span><img class="face" src="img/emotion/face01/50.png" /></span>
				<span><img class="face" src="img/emotion/face01/51.png" /></span>
				<span><img class="face" src="img/emotion/face01/52.png" /></span>
				<span><img class="face" src="img/emotion/face01/53.png" /></span>
				
				<span><img class="face" src="img/emotion/face01/54.png" /></span>
				<span><img class="face" src="img/emotion/face01/55.png" /></span>
				<span><img class="face" src="img/emotion/face01/56.png" /></span>
				<span><img class="face" src="img/emotion/face01/57.png" /></span>
				<span><img class="face" src="img/emotion/face01/58.png" /></span>
				<span><img class="face" src="img/emotion/face01/59.png" /></span>
				<span><img class="del" src="img/wchat/icon__emotion-del.png" /></span>
			</div>
		</div>
		<div class="swiper-slide">
			<div class="face-list face__sm-list">
				<span><img class="face" src="img/emotion/face01/60.png" /></span>
				<span><img class="face" src="img/emotion/face01/61.png" /></span>
				<span><img class="face" src="img/emotion/face01/62.png" /></span>
				<span><img class="face" src="img/emotion/face01/63.png" /></span>
				<span><img class="face" src="img/emotion/face01/64.png" /></span>
				<span><img class="face" src="img/emotion/face01/65.png" /></span>
				<span><img class="face" src="img/emotion/face01/66.png" /></span>
				
				<span><img class="face" src="img/emotion/face01/67.png" /></span>
				<span><img class="face" src="img/emotion/face01/68.png" /></span>
				<span><img class="face" src="img/emotion/face01/69.png" /></span>
				<span><img class="face" src="img/emotion/face01/70.png" /></span>
				<span><img class="face" src="img/emotion/face01/71.png" /></span>
				<span><img class="face" src="img/emotion/face01/72.png" /></span>
				<span><img class="face" src="img/emotion/face01/73.png" /></span>
				
				<span><img class="face" src="img/emotion/face01/74.png" /></span>
				<span><img class="face" src="img/emotion/face01/75.png" /></span>
				<span><img class="face" src="img/emotion/face01/76.png" /></span>
				<span><img class="face" src="img/emotion/face01/77.png" /></span>
				<span><img class="face" src="img/emotion/face01/78.png" /></span>
				<span><img class="face" src="img/emotion/face01/79.png" /></span>
				<span><img class="del" src="img/wchat/icon__emotion-del.png" /></span>
			</div>
		</div>
		<div class="swiper-slide">
			<div class="face-list face__sm-list">
				<span><img class="face" src="img/emotion/face01/80.png" /></span>
				<span><img class="face" src="img/emotion/face01/81.png" /></span>
				<span><img class="face" src="img/emotion/face01/82.png" /></span>
				<span><img class="face" src="img/emotion/face01/83.png" /></span>
				<span><img class="face" src="img/emotion/face01/84.png" /></span>
				<span><img class="face" src="img/emotion/face01/85.png" /></span>
				<span><img class="face" src="img/emotion/face01/86.png" /></span>
				
				<span><img class="face" src="img/emotion/face01/87.png" /></span>
				<span><img class="face" src="img/emotion/face01/88.png" /></span>
				<span><img class="face" src="img/emotion/face01/89.png" /></span>
				<span><img class="face" src="img/emotion/face01/90.png" /></span>
				<span><img class="face" src="img/emotion/face01/91.png" /></span>
				<span><img class="face" src="img/emotion/face01/92.png" /></span>
				<span><img class="face" src="img/emotion/face01/93.png" /></span>
				
				<span><img class="face" src="img/emotion/face01/94.png" /></span>
				<span><img class="face" src="img/emotion/face01/95.png" /></span>
				<span><img class="face" src="img/emotion/face01/96.png" /></span>
				<span><img class="face" src="img/emotion/face01/97.png" /></span>
				<span><img class="face" src="img/emotion/face01/98.png" /></span>
				<span><img class="face" src="img/emotion/face01/99.png" /></span>
				<span><img class="del" src="img/wchat/icon__emotion-del.png" /></span>
			</div>
		</div>
	</div>
	<!-- //动图1 -->
	<div class="swiper__tmpl-emotion02" style="display: none;">
		<div class="swiper-slide">
			<div class="face-list face__lg-list">
				<span><img class="lg-face" src="img/emotion/face02/0.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/1.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/2.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/3.gif" /></span>

				<span><img class="lg-face" src="img/emotion/face02/4.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/5.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/6.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/7.gif" /></span>
			</div>
		</div>
		<div class="swiper-slide">
			<div class="face-list face__lg-list">
				<span><img class="lg-face" src="img/emotion/face02/8.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/9.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/10.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/11.gif" /></span>
				
				<span><img class="lg-face" src="img/emotion/face02/12.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/13.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/14.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face02/15.gif" /></span>
			</div>
		</div>
	</div>
	<!-- //动图2 -->
	<div class="swiper__tmpl-emotion03" style="display: none;">
		<div class="swiper-slide">
			<div class="face-list face__lg-list">
				<span><img class="lg-face" src="img/emotion/face03/0.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/1.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/2.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/3.gif" /></span>

				<span><img class="lg-face" src="img/emotion/face03/4.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/5.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/6.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/7.gif" /></span>
			</div>
		</div>
		<div class="swiper-slide">
			<div class="face-list face__lg-list">
				<span><img class="lg-face" src="img/emotion/face03/8.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/9.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/10.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/11.gif" /></span>
				
				<span><img class="lg-face" src="img/emotion/face03/12.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/13.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/14.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face03/15.gif" /></span>
			</div>
		</div>
	</div>
	<!-- //动图3 -->
	<div class="swiper__tmpl-emotion04" style="display: none;">
		<div class="swiper-slide">
			<div class="face-list face__lg-list">
				<span><img class="lg-face" src="img/emotion/face04/0.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/1.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/2.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/3.gif" /></span>

				<span><img class="lg-face" src="img/emotion/face04/4.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/5.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/6.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/7.gif" /></span>
			</div>
		</div>
		<div class="swiper-slide">
			<div class="face-list face__lg-list">
				<span><img class="lg-face" src="img/emotion/face04/8.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/9.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/10.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/11.gif" /></span>
				
				<span><img class="lg-face" src="img/emotion/face04/12.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/13.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/14.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face04/15.gif" /></span>
			</div>
		</div>
	</div>
	<!-- //动图4 -->
	<div class="swiper__tmpl-emotion05" style="display: none;">
		<div class="swiper-slide">
			<div class="face-list face__lg-list">
				<span><img class="lg-face" src="img/emotion/face05/0.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/1.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/2.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/3.gif" /></span>

				<span><img class="lg-face" src="img/emotion/face05/4.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/5.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/6.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/7.gif" /></span>
			</div>
		</div>
		<div class="swiper-slide">
			<div class="face-list face__lg-list">
				<span><img class="lg-face" src="img/emotion/face05/8.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/9.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/10.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/11.gif" /></span>
				
				<span><img class="lg-face" src="img/emotion/face05/12.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/13.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/14.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face05/15.gif" /></span>
			</div>
		</div>
	</div>
	<!-- //动图4 -->
	<div class="swiper__tmpl-emotion06" style="display: none;">
		<div class="swiper-slide">
			<div class="face-list face__lg-list">
				<span><img class="lg-face" src="img/emotion/face06/0.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/1.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/2.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/3.gif" /></span>

				<span><img class="lg-face" src="img/emotion/face06/4.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/5.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/6.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/7.gif" /></span>
			</div>
		</div>
		<div class="swiper-slide">
			<div class="face-list face__lg-list">
				<span><img class="lg-face" src="img/emotion/face06/8.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/9.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/10.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/11.gif" /></span>
				
				<span><img class="lg-face" src="img/emotion/face06/12.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/13.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/14.gif" /></span>
				<span><img class="lg-face" src="img/emotion/face06/15.gif" /></span>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var emotionSwiper;
		function setEmotionSwiper(tmpl){
			var _tmpl = tmpl ? tmpl : $("#J__emotionFootTab ul li.cur").attr("tmpl");
			$("#J__swiperEmotion .swiper-container").attr("id", _tmpl);
			$("#J__swiperEmotion .swiper-wrapper").html($("." + _tmpl).html());

			emotionSwiper = new Swiper('#' + _tmpl, {
				pagination: '.pagination-emotion',
				paginationClickable: true
			});
		}
		// 点击切换表情
		$("#J__emotionFootTab").on("click", "ul li.swiperTmpl", function(){
			// 先销毁swiper
			emotionSwiper && emotionSwiper.destroy(true, true);
			var _tmpl = $(this).attr("tmpl");
			$(this).addClass("cur").siblings().removeClass("cur");

			setEmotionSwiper(_tmpl);
		});
	</script>
	<!-- …… 表情模板.End -->

	<!-- …… 红包弹窗模板.Start -->
	<div class="wc__choosePanel-tmpl">
		<!-- //红包模板.begin -->
		<div id="J__popupTmpl-Hongbao" style="display:none;">
			<div class="wc__popupTmpl tmpl-hongbao">
				<i class="wc-xclose"></i>
				<ul class="clearfix">
					<li class="item flexbox">
						<label class="txt">总金额</label><input class="ipt-txt flex1" type="tel" name="hbAmount" placeholder="0.00" /><em class="unit">元</em>
					</li>
					<li class="item flexbox">
						<label class="txt">红包个数</label><input class="ipt-txt flex1" type="tel" name="hbNum" placeholder="填写个数" /><em class="unit">个</em>
					</li>
					<li class="tips">在线人数共<em class="memNum">186</em>人</li>
					<li class="item item-area">
						<textarea class="describe" name="content" placeholder="恭喜发财，大吉大利"></textarea>
					</li>
					<li class="amountTotal">￥<em class="num">0.00</em></li>
				</ul>
			</div>
		</div>
		<!-- //红包模板.end -->
	</div>
	<script type="text/javascript">
		/* ...红包事件.start */
		$(".J__wchatHb").on("click", function(){
			var bpidx = wcPop({
				skin: 'ios',
				content: $("#J__popupTmpl-Hongbao").html(),
				style: 'background-color: #f3f3f3; max-width: 320px; width: 90%;',
				shadeClose: false,

				btns: [
					{
						text: '塞钱进红包',
						style: 'background:#ffba00;color:#fff;font-size:18px;',
						onTap() {
							alert("塞钱成功！");
							wcPop.close(bpidx);
						}
					}
				]
			});
		});
		/* ...红包事件.end */

		// ...关闭
		$("body").on("click", ".wc__popupTmpl .wc-xclose", function(){
			wcPop.close();
		});
	</script>
	<!-- …… 红包弹窗模板.End -->

	
	<script type="text/javascript">
		/** __公共函数 */
		$(function(){
			// 禁止长按弹出系统菜单
			$(".wechat__panel").on("contextmenu", function(e){
				e.preventDefault();
			});
		});
		
		/** __自定函数 */
		$(function(){
			// ...滚动聊天区底部
			function wchat_ToBottom(){
				$(".wc__chatMsg-panel").animate({scrollTop: $("#J__chatMsgList").height()}, 0);
			}

			// ...点击聊天面板区域
			$(document).on("click", ".wc__chatMsg-panel", function(e){
				var _tapMenu = $(".wc__chatTapMenu");
				if(_tapMenu.length && e.target != _tapMenu && !$.contains(_tapMenu[0], e.target)){
					// 关闭长按菜单
					_tapMenu.hide();
					$(".wc__chatMsg-panel").find("li .msg").removeClass("taped");
				}
				$(".wc__choose-panel").hide();
			});

			// ...表情、选择区切换
			$(".wc__editor-panel").on("click", ".btn", function(){
				var that = $(this);
				$(".wc__choose-panel").show();
				if (that.hasClass("btn-emotion")) {
					$(".wc__choose-panel .wrap-emotion").show();
					$(".wc__choose-panel .wrap-choose").hide();
					// 初始化swiper表情
					!emotionSwiper && $("#J__emotionFootTab ul li.cur").trigger("click");
				} else if (that.hasClass("btn-choose")) {
					$(".wc__choose-panel .wrap-emotion").hide();
					$(".wc__choose-panel .wrap-choose").show();
				}
				wchat_ToBottom();
			});

			// ...处理编辑器信息
			var $editor = $(".J__wcEditor"), _editor = $editor[0];
			function surrounds(){
				setTimeout(function () { //chrome
					var sel = window.getSelection();
					var anchorNode = sel.anchorNode;
					if (!anchorNode) return;
					if (sel.anchorNode === _editor ||
						(sel.anchorNode.nodeType === 3 && sel.anchorNode.parentNode === _editor)) {
						
						var range = sel.getRangeAt(0);
						var p = document.createElement("p");
						range.surroundContents(p);
						range.selectNodeContents(p);
						range.insertNode(document.createElement("br")); //chrome
						sel.collapse(p, 0);
						
						(function clearBr() {
							var elems = [].slice.call(_editor.children);
							for (var i = 0, len = elems.length; i < len; i++) {
								var el = elems[i];
								if (el.tagName.toLowerCase() == "br") {
									_editor.removeChild(el);
								}
							}
							elems.length = 0;
						})();
					}
				}, 10);
			}
			// 格式化编辑器包含标签
			_editor.addEventListener("click", function () {
				$(".wc__choose-panel").hide();
			}, true);
			_editor.addEventListener("focus", function(){
				surrounds();
			}, true);
			_editor.addEventListener("input", function(){
				surrounds();
			}, false);
			// 点击表情
			$("#J__swiperEmotion").on("click", ".face-list span img", function(){
				var that = $(this), range;

				if(that.hasClass("face")){ //小表情
					var img = that[0].cloneNode(true);
					_editor.focus();
					_editor.blur(); //输入表情时禁止输入法

					setTimeout(function(){
						if(document.selection && document.selection.createRange){
							document.selection.createRange().pasteHTML(img);
						}else if(window.getSelection && window.getSelection().getRangeAt){
							range = window.getSelection().getRangeAt(0);
							range.insertNode(img);
							range.collapse(false);

							var sel = window.getSelection();
							sel.removeAllRanges();
							sel.addRange(range);
						}
					}, 10);
				}else if(that.hasClass("del")){ //删除
					_editor.focus();
					_editor.blur(); //输入表情时禁止输入法

					setTimeout(function(){
						range = window.getSelection().getRangeAt(0);
						range.collapse(false);

						var sel = window.getSelection();
						sel.removeAllRanges();
						sel.addRange(range);
						document.execCommand("delete");
					}, 10);
				} else if(that.hasClass("lg-face")){ //大表情
					var _img = that.parent().html();
					var _tpl = [
						'<li class="me">\
							<div class="content">\
								<div class="msg lgface">'+ _img + '</div>\
							</div>\
							<a class="avatar" href="微聊(好友主页).html"><img src="img/uimg/u__chat-img14.jpg" /></a>\
						</li>'
					].join("");
					$chatMsgList.append(_tpl);

					wchat_ToBottom();
				}
			});
			// 发送信息
			var $chatMsgList = $("#J__chatMsgList");
			function isEmpty(){
				var html = $editor.html();
				html = html.replace(/<br[\s\/]{0,2}>/ig, "\r\n");
				html = html.replace(/<[^img].*?>/ig, "");
				html = html.replace(/&nbsp;/ig, "");
				return html.replace(/\r\n|\n|\r/, "").replace(/(?:^[ \t\n\r]+)|(?:[ \t\n\r]+$)/g, "") == "";
			}
			$(".J__wchatSubmit").on("click", function(){
				// 判断内容是否为空
				if(isEmpty()) return;

				var html = $editor.html();
				var reg = /(http:\/\/|https:\/\/)((\w|=|\?|\.|\/|&|-)+)/g;
				html = html.replace(reg, "<a href='$1$2'>$1$2</a>");
				var msgTpl = [
					'<li class="me">\
						<div class="content">\
							<div class="msg">'+ html +'</div>\
						</div>\
						<a class="avatar" href="微聊(好友主页).html"><img src="img/uimg/u__chat-img14.jpg" /></a>\
					</li>'
				].join("");
				$chatMsgList.append(msgTpl);

				// 清空聊天框并获取焦点（处理输入法和表情 - 聚焦）
				if(!$(".wc__choose-panel").is(":hidden")){
					$editor.html("");
				}else{
					$editor.html("").focus().trigger("click");
				}
				wchat_ToBottom();
			});

			// ...长按弹出菜单
			$("#J__chatMsgList").on("longTap", "li .msg", function(e){
				var that = $(this), menuTpl, menuNode = $("<div class='wc__chatTapMenu animated anim-fadeIn'></div>");
				that.addClass("taped");
				that.parents("li").siblings().find(".msg").removeClass("taped");
				var isRevoke = that.parents("li").hasClass("me");
				var _revoke = isRevoke ? "<a href='#'><i class='ico i4'></i>撤回</a>" : "";
				
				if(that.hasClass("picture")){
					console.log("图片长按");
					menuTpl = "<div class='menu menu-picture'><a href='#'><i class='ico i1'></i>复制</a><a href='#'><i class='ico i2'></i>收藏</a><a href='#'><i class='ico i3'></i>另存为</a>"+ _revoke +"<a href='#'><i class='ico i5'></i>删除</a></div>";
				}else if(that.hasClass("video")){
					console.log("视频长按");
					menuTpl = "<div class='menu menu-video'><a href='#'><i class='ico i3'></i>另存为</a>" + _revoke +"<a href='#'><i class='ico i5'></i>删除</a></div>";
				}else{
					console.log("文字长按");
					menuTpl = "<div class='menu menu-text'><a href='#'><i class='ico i1'></i>复制</a><a href='#'><i class='ico i2'></i>收藏</a>" + _revoke +"<a href='#'><i class='ico i5'></i>删除</a></div>";
				}

				if(!$(".wc__chatTapMenu").length){
					$(".wc__chatMsg-panel").append(menuNode.html(menuTpl));
					autoPos();
				}else{
					$(".wc__chatTapMenu").hide().html(menuTpl).fadeIn(250);
					autoPos();
				}

				function autoPos(){
					console.log(that.position().top)
					var _other = that.parents("li").hasClass("others");
					$(".wc__chatTapMenu").css({
						position: "absolute",
						left: that.position().left + parseInt(that.css("marginLeft")) + (_other ? 0 : that.outerWidth() - $(".wc__chatTapMenu").outerWidth()),
						top: that.position().top - $(".wc__chatTapMenu").outerHeight() - 8
					});
				}
			});
			// ...销毁长按弹窗
			$(".wc__chatMsg-panel").on("scroll", function(){
				$(".wc__chatTapMenu").hide();
				$(this).find("li .msg").removeClass("taped");
			});
		});
	</script>
	
</body>
</html>

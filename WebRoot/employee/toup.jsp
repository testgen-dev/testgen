<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<link rel="stylesheet" href="../style/reset.css" />
	<link rel="stylesheet" href="../style/toup.css" />
	<link rel="stylesheet" href="../swiper/swiper.min.css">
	<script src="../js/jquery-1.11.3.js"></script>
	<script src="../js/fontSize.js"></script>
	<link rel="stylesheet" type="text/css" href="../style/register-login.css">
	<link rel="stylesheet" type="text/css" href="../style/add.css">
	<link rel="stylesheet" type="text/css" href="../js/jquery.multiselect.css" />
	<link rel="stylesheet" type="text/css" href="../style/jquery-ui.css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.ui.core.js"></script>
    <script type="text/javascript" src="../js/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="../js/jquery.multiselect.js"></script>
    <script src='../js/layer/layer.js' type="text/javascript"></script>
	<title>在线答题</title>
	<script>
	    $.ajax({
	       url:"/testgen/exam",
	       contentType:"application/json",
	       error:function(){
	          alert("获取试题出错");
	       },
	       success:function(data){
	          
	       }
	    });
	</script>
</head>
<body>
	<section class="toup"  id="t1">
		<!-- <div class="logo">
			<img src="images/logo.png"/>
		</div> -->
		<div class="swipers">
			<div class="con">
				<h1>手机招聘试题平台在线答题</h1>
				<p>感谢选择此平台！</p>
				<p>考试期间请遵守答题纪律，严禁上网查资料</p>
				<p>根据您的答题成绩，我们会公平公正的向您应聘的公司进行推荐</p>
				<p>准备好了吗？开始您的答题之旅，祝您好运！</p>
			</div>
			<a href="javascript:;" class="jion">开始考试</a>
		</div>
	</section>
	<section class="toup" id="t2">
		<!-- <div class="logo">
			<img src="images/logo.png"/>
		</div> -->
		<div class="swipers">
		<!-- 上下 -->
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="scores">
						<h3>题目</h3>
						<div class="f"><span>1</span>第1题的题目</div>
						<div class="choose">
							<div class="input"><input type="radio" name="score" id="1"/><label for="1">选项1</label></div>
							<div class="input"><input type="radio" name="score" id="2"/><label for="2">选项2</label></div>
							<div class="input"><input type="radio" name="score" id="3"/><label for="3">选项3</label></div>
							<div class="input"><input type="radio" name="score" id="4"/><label for="4">选项4</label></div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="scores">
						<h3>对于lamodaDIY的鞋子，您在以下几个方面的需求程度如何呢？</h3>
						<div class="f"><span>2</span>款式独特性（1-5分）</div>
						<div class="choose">
							<div class="input"><input type="radio" name="score1" id="6"/><label for="6">5分   款式必须非常独特，其他地方买不到，可放弃其他方面要求</label></div>
							<div class="input"><input type="radio" name="score1" id="7"/><label for="7">4分   </label></div>
							<div class="input"><input type="radio" name="score1" id="8"/><label for="8">1分   </label></div>
							<div class="input"><input type="radio" name="score1" id="9"/><label for="9">1分   </label></div>
							<div class="input"><input type="radio" name="score1" id="10"/><label for="10">1分   只要其他方面可以满足，款式独特性无所谓</label></div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="scores">
						<h3>对于lamodaDIY的鞋子，您在以下几个方面的需求程度如何呢？</h3>
						<div class="f"><span>3</span>款式专属性（1-5分）</div>
						<div class="choose">
							<div class="input"><input type="radio" name="score2" id="11"/><label for="11">5分   必须能够体现个人属性（纪念日、图像），可放弃其他方面要求 </label></div>
							<div class="input"><input type="radio" name="score2" id="12"/><label for="12">4分   </label></div>
							<div class="input"><input type="radio" name="score2" id="13"/><label for="13">3分   </label></div>
							<div class="input"><input type="radio" name="score2" id="14"/><label for="14">2分   </label></div>
							<div class="input"><input type="radio" name="score2" id="15"/><label for="15">1分   只要其他方面可以满足，专属性无所谓</label></div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="scores">
						<h3>对于lamodaDIY的鞋子，您在以下几个方面的需求程度如何呢？</h3>
						<div class="f"><span>4</span>大牌或明星同款（1-5分）</div>
						<div class="choose">
							<div class="input"><input type="radio" name="score3" id="16"/><label for="16">5分   必须接近某大品牌或某明星的同款，可放弃其他方面要求 </label></div>
							<div class="input"><input type="radio" name="score3" id="17"/><label for="17">4分   </label></div>
							<div class="input"><input type="radio" name="score3" id="18"/><label for="18">3分   </label></div>
							<div class="input"><input type="radio" name="score3" id="19"/><label for="19">2分   </label></div>
							<div class="input"><input type="radio" name="score3" id="20"/><label for="20">1分   只要其他方面可以满足，是否大牌或明星同款无所谓</label></div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="scores">
						<h3>对于lamodaDIY的鞋子，您在以下几个方面的需求程度如何呢？</h3>
						<div class="f"><span>5</span>材料可变性（1-5分）</div>
						<div class="choose">
							<div class="input"><input type="radio" name="score3" id="21"/><label for="21">5分   必须有非常多的材料可供选择，可放弃其他方面要求</label></div>
							<div class="input"><input type="radio" name="score3" id="22"/><label for="22">4分   </label></div>
							<div class="input"><input type="radio" name="score3" id="23"/><label for="23">3分   </label></div>
							<div class="input"><input type="radio" name="score3" id="24"/><label for="24">2分   </label></div>
							<div class="input"><input type="radio" name="score3" id="25"/><label for="25">1分   只要其他方面可以满足，有2-3种经典材料即可</label></div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="scores">
						<h3>对于lamodaDIY的鞋子，您在以下几个方面的需求程度如何呢？</h3>
						<div class="f"><span>6</span>请问您的年龄？</div>
						<div class="choose">
							<div class="input"><input type="radio" name="score4" id="26"/><label for="26">20-30 </label></div>
							<div class="input"><input type="radio" name="score4" id="27"/><label for="27">30-40 </label></div>
							<div class="input"><input type="radio" name="score4" id="28"/><label for="28">40-50</label></div>
							<div class="input"><input type="radio" name="score4" id="29"/><label for="29">50-60</label></div>
							<div class="input"><input type="radio" name="score4" id="30"/><label for="30">60以上</label></div>
						</div>
					</div>
				</div>
			</div>
			<div class="preNexts">
				<div class="swiper-button-prev"><div class="pre"></div>上一题</div>
				<div class="swiper-button-next"><div class="next"></div>下一题</div>
			</div>
		</div>
		<!-- 上下end -->
		</div>
	</section>
	<section class="toup" id="t3">
		<!-- <div class="logo">
			<img src="images/logo.png"/>
		</div> -->
		<div class="swipers">
			<div class="con con1">
				<div class="smile">
					<p>答题完毕</p>
					<p>点击提交确认交卷</p>
				</div>
			</div>
			<a href="javascript:;" class="tijiao">提交</a>
		</div>
	</section>
	<script src="../swiper/swiper.min.js"></script>
	<script>
		var mySwiper  = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        slidesPerView: 1,
        paginationClickable: true,
        spaceBetween: 30,
        loop: true,
		onReachEnd: function(swiper){
			$("#t2").hide();
			$("#t3").show();
		}
    });
	$("#t2,#t3").hide();
		$("a.jion").on("click",function(){
			$("#t1").hide();
			$("#t2").show();
	});
	$(".swiper-container label,.swiper-container input").click(function(){
		var this_active = $(this).parents(".swiper-slide").index();
		setTimeout(function(){
			mySwiper.slideTo(this_active+1,1000);
		},500);
		
    });
	$(".swiper-button-next").click(function(){
		if(mySwiper .isEnd){
			$("#t2").hide();
			$("#t3").show();
		}
	});
	
	</script>
</body>
</html>
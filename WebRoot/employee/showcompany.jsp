<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">

	<title>登录 - 手机试题招聘平台</title>
	<link rel="stylesheet" type="text/css" href="../style/register-login.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1>可应聘公司</h1>
	</div>

	<div class="cont-main clearfix">

		<div class="login form">
			<div class="group">
			  <div><a href= "showcominfo.jsp">华为有限公司</a></div>
			  <hr>
			  <div><a href= "">Baidu有限公司</a></div>
			  <hr>
			  <div><a href= "">Tencent有限公司</a></div>
			  <hr>
			  <div><a href= "">Alibaba有限公司</a></div>
			  <hr>
			  <br>
			  <br>
			</div>
		</div>

	</div>
</div>

<div class="footer">
	<p> 手机试题招聘平台</p>
</div>

<script src='js/particles.js' type="text/javascript"></script>
<script src='js/background.js' type="text/javascript"></script>
<script src='js/jquery.min.js' type="text/javascript"></script>
<script src='js/layer/layer.js' type="text/javascript"></script>
<script src='js/index.js' type="text/javascript"></script>
<script>
	$("#remember-me").click(function(){
		var n = document.getElementById("remember-me").checked;
		if(n){
			$(".zt").show();
		}else{
			$(".zt").hide();
		}
	});
</script>
</body>
</html>
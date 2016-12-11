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
		<h1>展示推荐人详细信息</h1>
	</div>

	<div class="cont-main clearfix">

		<div class="login form">
			<div class="group">
			    <div>
				    <label>姓名:</label>
					<br>
					<label>张三</label>
				</div>
				<hr><br>
				<div>
					<label >电话:</label>
					<br>
					<label>14155151315</label>
				</div>
				<hr><br>
				<div>
					<label>掌握技能:</label>	
					<br>
					<label>Java </label>
					<lable>C++</lable>
					<lable>Python</lable>
					<lable>Ruby</lable>
			</div>
			<div><br><br><br></div>
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
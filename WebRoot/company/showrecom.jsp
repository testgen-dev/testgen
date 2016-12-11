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
		<h1>展示所有推荐人</h1>
	</div>

	<div class="cont-main clearfix">

		<div class="login form">
			<div class="group">
			    <div id="companypos">
			        <lable>公司职位1</lable>
			        <br>
			        <td><a href='showemployee.jsp'>张三</a></span>
			    </div>
			     <div>
			        <lable>公司职位2</lable>
			        <br>
			        <span><a href='showemployee.jsp'>李四</a></span>
			    </div>
			     <div>
			        <lable>公司职位3</lable>
			        <br>
			        <td><a href='showemployee.jsp'>王五</a></span>
			    </div>
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
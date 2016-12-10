<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">

	<title>登录 - 手机试题招聘平台</title>
	<link rel="stylesheet" type="text/css" href="../style/register-login.css">
	<link rel="stylesheet" type="text/css" href="../style/add.css">
	<link rel="stylesheet" type="text/css" href="../js/jquery.multiselect.css" />
	<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/ui-lightness/jquery-ui.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>

<script type="text/javascript" src="../js/jquery.ui.core.js"></script>
<script type="text/javascript" src="../js/jquery.ui.widget.js"></script>
<script type="text/javascript" src="../js/jquery.multiselect.js"></script>
<script type="text/javascript">
$(function(){
    $("select").multiselect({
        noneSelectedText: "==请选择==",
        checkAllText: "全选",
        uncheckAllText: '全不选',
        selectedList:4
    });
});
</script>
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1>试题录入</h1>
	</div>
	<div class="cont-main clearfix">
		<form action="">
			<label>题目</label>
			<input type="text">
			<br>
			<label>选项A</label>
			<input type="text">
			<br>
			<label>选项B</label>
			<input type="text">
			<br>
			<label>选项C</label>
			<input type="text">
			<br>
			<label>选项D</label>
			<input type="text">
			<br>
			<label>正确选项</label>
			<input type="radio" name="correct" value="A"> A
			<input type="radio" name="correct" value="B"> B
			<input type="radio" name="correct" value="C"> C
			<input type="radio" name="correct" value="D"> D
			<br>
			<label>题目等级(4最高)</label>
			<input type="radio" name="correct" value="A"> 1
			<input type="radio" name="correct" value="B"> 2
			<input type="radio" name="correct" value="C"> 3
			<input type="radio" name="correct" value="D"> 4		
			<br>
			<label>选择所属职位</label>
			<p>
				<select id ="position" title="position" multiple="multiple" name="position" size="5">
				<option value="frontend">前端工程师</option>
				<option value="backend">后端工程师</option>
				<option value="mobileend">移动端工程师</option>
				</select>
            </p>
            <label>选择所属技术背景</label>
            <p>
			    <select id ="tech" title="tech" multiple="multiple" name="tech" size="5">
					<option value="JS">JS</option>
					<option value="HTML">HTML</option>
					<option value="CSS">CSS</option>
					<option value="JAVA">JAVA</option>
					<option value="C++">C++</option>
					<option value="Python">Python</option>
					<option value="Android">Android</option>
					<option value="iOS">iOS</option>
				</select>
            </p>
       </form>
	</div>
	
</div>

<div class="footer">
	<p> - Thousands Find</p>
	<p>Designed By ZengRong  <a href="zrong.me">mycodes.net</a> 2016</p>
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
	$(function(){ 
	    $("select").multiselect({ 
	    noneSelectedText: "==请选择==", 
	    checkAllText: "全选", 
	    uncheckAllText: '全不选', 
	    selectedList:4 
	    }); 
	    }); 
</script>
</body>
</html>
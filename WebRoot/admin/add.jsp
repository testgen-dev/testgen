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
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1>试题录入</h1>
	</div>
	<div class="cont-main clearfix">
	<div class="login form">
			<div class="group">
		<form action="" id="testinput">
			<label>题目</label>
			<input type="text" id="question" name="question">
			<br>
			<label>选项A</label>
			<input type="text" id="itemA" name="itemA" >
			<br>
			<label>选项B</label>
			<input type="text" id="itemB" name="itemB">
			<br>
			<label>选项C</label>
			<input type="text" id="itemC" name="itemC">
			<br>
			<label>选项D</label>
			<input type="text" id="itemD" name="itemD">
			<br>
			<label>正确选项</label>
			<input type="radio" name="correct" value="A" > A
			<input type="radio" name="correct" value="B"> B
			<input type="radio" name="correct" value="C"> C
			<input type="radio" name="correct" value="D"> D
			<br>
			<label>题目等级(4最高)</label>
			<input type="radio" name="level" value="one"> 1
			<input type="radio" name="level" value="two"> 2
			<input type="radio" name="level" value="three"> 3
			<input type="radio" name="level" value="four"> 4		
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
            <input type="hidden" name="time"  id="time">
            <div class="button">
			        <button type="submit" class="login-btn register-btn" id="button">提交</button>
		        </div>
       </form>
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
	$(function(){ 
	    $("select").multiselect({ 
	    noneSelectedText: "==请选择==", 
	    checkAllText: "全选", 
	    uncheckAllText: '全不选', 
	    selectedList:4 
	    }); 
	    }); 
	//实体提交
     function submit(action){
        var correctnum = document.getElementById("testinput").correct;//正确选项
        var levelnum = document.getElementById("testinput").level;//题目等级
        var question = document.getElementById("question");
        var itemA = document.getElementById("itemA");
        var itemB = document.getElementById("itemB");
        var itemC = document.getElementById("itemC");
        var itemD = document.getElementById("itemD");
        //获取多选值
        
        for(var i=0;i<radionum.length;i++){
            if(radionum[i].checked){
                correct = correctnum[i];
            }
        }
        for(var j=0;i<levelnum.length;j++){
            if(radionum[j].checked){
                level = levelnum[i];
            }
        }
        window.location.href='?action='+action+'&correct='+correct+'&level='+level
        +'&question='+question+'&itemA='+itemA+'&itemB='+itemB+'&itemC='+itemC+'&itemD='
        +itemD;
     }
</script>
</body>
</html>
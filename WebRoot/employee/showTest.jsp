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
	<link rel="stylesheet" type="text/css" href="../style/jquery-ui.css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.ui.core.js"></script>
    <script type="text/javascript" src="../js/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="../js/jquery.multiselect.js"></script>
    <script src='../js/layer/layer.js' type="text/javascript"></script>
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
<!-- 			<form name="testgen"> -->
			   <h3 align="center">选择公司</h3>
			   <p>
			    <select id ="company" title="company" name="company" size="4" onchange="comChange()">
					<!-- <option value="JS">JS</option>
					<option value="HTML">HTML</option> -->
				</select>
               </p>
               <h3 align="center">选择项目</h3>
               <select id ="project" title="project" name="project" size="4">
					<option value="JS">JS</option>
					<option value="HTML">HTML</option>
				</select>
<!-- 			   </form> -->
			   	<div class="button">
			        <button  class="login-btn register-btn" id="button">开始考试</button>
		        </div>
			</div>
		</div>
	</div>
</div>

<div class="footer">
	<p> 手机试题招聘平台</p>
</div>

<script>
	$(function(){ 
    $("select").multiselect({ 
    noneSelectedText: "==请选择==", 
    checkAllText: "", 
    uncheckAllText: '', 
    selectedList:4 
    }); 
    }); 
	function comChange(){
	    var objs =document.getElementById("company");
	    var opValue = objs.options[objs.selectedIndex].value;
	    alert(opValue);
	};
 	$(document).ready(function(){
	    $.ajax({
			url:"http://112.74.62.114:8080/Entity/U1ff54ed338bfc/testgen/Company/",
			type:"GET",
		    contentType: "application/json",
		    error:function(){
		    	alert("获取公司信息失败");
		    },
		    success:function(data){
				var company = data.Company;
				var com = null;
				var select = document.getElementById("company");
				
				for(var i=0;i< company.length;i++){
				    var opp = new Option(company[i].companyname, company[i].userid);
				    select.add(opp);
				   /*  $("#company").append( "<option value='"+company[i].companyname+"'>"+company[i].companyname+"</option>"); */
			/* 	    if(com==null){
						com = "<option value='"+company[i].companyname+"'>"+company[i].companyname+"</option>";
				    }
				    else{
						com = com+" "+"<option value='"+company[i].companyname+"'>"+company[i].companyname+"</option>";
				    } */
				}
				/* $("#company").html(com); */
		    }
	    })
	}) 
</script>
</body>
</html>
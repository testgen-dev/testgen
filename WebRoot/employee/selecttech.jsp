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
     
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1>公司详细信息</h1>
	</div>

	<div class="cont-main clearfix">
		<div class="login form">
			<div class="group">
			<form name="testgen">
			   <h3>请选择您最擅长的一项或几项技术</h3>
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
            
			   <br><br>
			   </form>
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

<script src='../js/particles.js' type="text/javascript"></script>
<script src='../js/background.js' type="text/javascript"></script>
<script src='../js/layer/layer.js' type="text/javascript"></script>
<script>
	
	$(function(){ 
	    $("select").multiselect({ 
	    noneSelectedText: "==请选择==", 
	    checkAllText: "全选", 
	    uncheckAllText: '全不选', 
	    selectedList:4 
	    }); 
	    });  

	$("#button").click(function(){
          if(!document.testgen.tech.value){
             	alert("请输入技术背景！"); 
             document.testgen.tech.focus(); 
             return false;
         } 
         else { 
       
          var tech = null;
          var pos = $('#tech :selected');
          pos.each(function () {
             if(tech == null){
                 tech = $(this).html();
             }
             else { 
        	 	 tech = tech+","+$(this).html();
        		}
          });
          
	 	 var position = location.search.replace(/(?:(?:^|.*&\s*)position\s*\=\s*([^&]*).*$)|^.*$/, "$1");
	 	 var p = decodeURI(position);
	 	 alert(p);
	 	 var projectId = location.search.replace(/(?:(?:^|.*&\s*)projectId\s*\=\s*([^&]*).*$)|^.*$/, "$1");
	  	 var comUserId = location.search.replace(/(?:(?:^|.*&\s*)comUserId\s*\=\s*([^&]*).*$)|^.*$/, "$1");
	 	 var userId = document.cookie.replace(/(?:(?:^|.*;\s*)userid\s*\=\s*([^;]*).*$)|^.*$/, "$1");
          
          var grade={
               employeeid : userId,
               companyid : comUserId,
               projectid : projectId,
               positionname : p
           }; 
              
	 	$.ajax({
			url: "http://112.74.62.114:8080/Entity/U1ff54ed338bfc/testgen/Grade/",
			type:"POST",
			contentType: "application/json",
			data:JSON.stringify(grade),
			error:function(){
				alert("添加grade失败");
			},//错误执行方法
			success:function(data){
				alert("添加grade成功");
			} //成功执行方法
		}); 
		  window.location.href = 'http://localhost:8080/testgen/employee/toup.html?&position='+position+"&tech="+tech;
          } 

       }); 
</script>
</body>
</html>
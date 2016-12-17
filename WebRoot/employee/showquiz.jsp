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
    <script>
	var position = location.search.replace(/(?:(?:^|.*&\s*)position\s*\=\s*([^&]*).*$)|^.*$/, "$1");
	 var tech = location.search.replace(/(?:(?:^|.*&\s*)tech\s*\=\s*([^&]*).*$)|^.*$/, "$1");
	 var userid = document.cookie.replace(/(?:(?:^|.*;\s*)userid\s*\=\s*([^;]*).*$)|^.*$/, "$1");
	 var positionzh=decodeURI(position);
	 var company = location.search.replace(/(?:(?:^|.*&\s*)company\s*\=\s*([^&]*).*$)|^.*$/, "$1");
	 var project = location.search.replace(/(?:(?:^|.*&\s*)project\s*\=\s*([^&]*).*$)|^.*$/, "$1");
	 
	 
	    $.ajax({
	       url:"/testgen/exam/start?position="+positionzh+"&tech="+tech+"&userId="+userid,
	       contentType:"application/json",
	       error:function(){
	          alert("获取试题出错");
	       },
	       success:function(data){
	      
		   console.log(data);
		   console.log(data.length);
		   var qa = null;
		   var str = null;
		       for (var i=0; i<data.length;i++){
			      if(i == 0){
			        str = "<div class='f' value="+data[i].id+"><span>"+i+"</span>"+data[i].content+"</div><div class='choose'><div class='input'><input type='radio' name="+i+" value='A'/><label for='1'>"+data[i].option1+"</label></div><div class='input'><input type='radio' name="+i+"  value='B'/><label for='1'>"+data[i].option2+"</label></div><div class='input'><input type='radio' name="+i+" value='C'/><label for='1'>"+data[i].option3+"</label></div><div class='input'><input type='radio' name="+i+" value='D'/><label for='1'>"+data[i].option4+"</label></div><br>";
			      
			      }
			      else if(i<data.length-1){
				  
				    str = str + "<div class='f' value="+data[i].id+"><span>"+i+"</span>"+data[i].content+"</div><div class='choose'><div class='input'><input type='radio' name="+i+" value='A'/><label for='1'>"+data[i].option1+"</label></div><div class='input'><input type='radio' name="+i+"  value='B'/><label for='1'>"+data[i].option2+"</label></div><div class='input'><input type='radio' name="+i+" value='C'/><label for='1'>"+data[i].option3+"</label></div><div class='input'><input type='radio' name="+i+" value='D'/><label for='1'>"+data[i].option4+"</label></div><br>";
				   
			      }
			      else {
			        str = str + "<div class='f' value="+data[i].id+"><span>"+i+"</span>"+data[i].content+"</div><div class='choose'><div class='input'><input type='radio' name="+i+" value='A'/><label for='1'>"+data[i].option1+"</label></div><div class='input'><input type='radio' name="+i+"  value='B'/><label for='1'>"+data[i].option2+"</label></div><div class='input'><input type='radio' name="+i+" value='C'/><label for='1'>"+data[i].option3+"</label></div><div class='input'><input type='radio' name="+i+" value='D'/><label for='1'>"+data[i].option4+"</label></div><br>";
				   
			      }
			      
		       }
		       $("#alltest").html(str);
		        $("#button").click(function(){
		          alert("hh");
		          console.log("hah");
		          
		         qa ="{\"qa\":[";
		          for (var i=0; i<data.length;i++){
		              var  opt= document.getElementsByName(i);
		              if(opt!=null){
		                  for (var k = 0; k < opt.length; k++) {
				                if (opt[k].checked == true) {
				                   qa = qa + "{\"questid\":"+data[i].id+",\"ans\":\""+opt[k].value+"\"},"; 
				                   
				                }
				            }
		              }
		          }
		          qa = qa+ "{\"userid\":"+userid+"}]}";
		           console.log(qa);
		       $.ajax({
			     url:"/testgen/exam/finish",
			     type:"POST",
				 dataType:"json",
			     contentType:"application/json",
			     data:qa,
			     success:function(data){
				 window.location.href = 'http://localhost:8080/testgen/employee/showgrade.jsp?&position='+position+"&company="+company+"&project="+project+"&score="+data;
			     },
		         error:function(){
		             
		             alert("显示成绩失败");
		         }
			   
		       });
		    
		    }); 
		   //    console.log(str);
		  
	       }
	    });
		   
		   
	</script>
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1>请答题</h1>
	</div>
	<div class="cont-main clearfix">

		<div class="login form">
			<div class="group">
			  <form id="addtest2">
			    <div id= "alltest"></div>
			   </form>
			   <div class="button">
			    <button type="submit" class="login-btn register-btn" id="button" >提交</button>
		       </div>
			<div><br><br><br>
			
		</div>

	</div>
</div>
<div class="footer">
	<p> 手机试题招聘平台</p>
</div>


</body>
</html>
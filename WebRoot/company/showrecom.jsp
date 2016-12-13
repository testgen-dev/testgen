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
    <script src='../js/layer/layer.js' type="text/javascript"></script>
    <script>
     var id=window.location.search.slice(window.location.search.lastIndexOf("?")+4);
     console.log(id);
       $.ajax({
			url:"http://112.74.62.114:8080/Entity/U1ff54ed338bfc/testgen/Projectx/?Projectx.id="+id,
	    	type:"GET",
	    	contentType: "application/json",
	    	error:function(){
	    	    alert("获取公司项目职位失败");
	    	},//错误执行方法
	    	success:function(data){
	    	    console.log(data);
	    	    alert(data);
		    	var dt = data.Projectx[0].projectposition;
		    	alert(dt);
		    	var positions= new Array(); 
		    	positions = dt.split(",");
		    	var pos = null;
	    	    for (var i= 0;i<positions.length;i++){
	    	        
	    	        if (pos == null){
	    	            pos = i+"&nbsp;&nbsp; <a href='showemployee.jsp>"+positions[i]+"</a></br><hr>";
	    	        }
	    	        else{
	    	            pos = pos +" "+i+"&nbsp;&nbsp;&nbsp;<a href='showemployee.jsp>"+positions[i]+"</a></br><hr>";
	    	        }
	    	        $("#test").html(pos);
	    	    }
	    	    
	    	  alert("获取公司项目职位成功");
	    	  console.log(dt);
			} //成功执行方法
	    });
</script>
    
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
			        <label>公司职位1</label>
			        <br>
			        <label><a href='showemployee.jsp'>张三</a></label>
			    </div>
			     <div>
			        <label>公司职位2</label>
			        <br>
			        <span><a href='showemployee.jsp'>李四</a></span>
			    </div>
			     <div>
			        <label>公司职位3</label>
			        <br>
			        <label><a href='showemployee.jsp'>王五</a></label>
			    </div>
			     <div id="test"> </div>
			</div>
		</div>

	</div>
</div>

<div class="footer">
	<p> 手机试题招聘平台</p>
</div>

</body>
</html>
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
         //var userid=window.location.search.slice(window.location.search.lastIndexOf("?")+1);
         var userid = document.cookie.replace(/(?:(?:^|.*;\s*)userid\s*\=\s*([^;]*).*$)|^.*$/, "$1");
         $.ajax({
					url:"http://112.74.62.114:8080/Entity/U1ff54ed338bfc/testgen/Projectx/?Projectx.userid="+userid,
			    	type:"GET",
			    	contentType: "application/json",
			    	error:function(){
			    	    alert("获取公司项目失败");
			    	},//错误执行方法
			    	success:function(data){
			    	    var len = data.Projectx.length;
			    	    var proj = null;
			    	    for(var i=0 ;i<len; i++){
			    	        var dtlist = data.Projectx[i];
			    	        if (proj == null){
			    	            proj = i+"&nbsp;&nbsp; <a href='showrecom.jsp?id="+dtlist.id+"'>"+dtlist.projectname+"</a>&nbsp;&nbsp;"+"</br><hr>";
			    	        }
			    	        else{
			    	            proj = proj +" "+i+"&nbsp;&nbsp;&nbsp;<a href='showrecom.jsp?id="+dtlist.id+"'>"+dtlist.projectname+"</a>&nbsp;&nbsp;"+"</br><hr>";
			    	        }
			    	        $("#test").html(proj);
		                }
					} //成功执行方法
			    });
    </script>
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1>展示公司整个项目</h1>
	</div>

	<div class="cont-main clearfix">
		<div class="index-tab">
			<div class="index-slide-nav">
				<a href="addproject.jsp">添加</a>
				<a href="showproject.jsp">显示</a>			
			</div>
		</div>

		<div class="login form">
			<div class="group">
			    <table id="tbitem">
					 <tr><td>公司的所有项目</td></tr>
				</table>
			    <div id="test"></div>
			</div>
		</div>

	</div>
</div>

<div class="footer">
	<p> 手机试题招聘平台</p>
</div>

</body>
</html>
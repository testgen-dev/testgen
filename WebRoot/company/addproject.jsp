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
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1>增加公司项目</h1>
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
			<form id="project">
				<label>项目名称</label>
				<br>
				<input type="text" id="projectname" name="projectname" style="width:220px; ">
				<br>
				<label >项目简介</label>
				<br>
				<textarea type="text" id="projectintro" name="projectintro" style="height:51px;width:220px; ">
				</textarea>
				<br>
				<label>项目职位</label>	
				<br>
				<p>
					<select id ="position" title="position" multiple="multiple" name="position" size="5">
						<option value="frontend">前端工程师</option>
						<option value="backend">后端工程师</option>
						<option value="mobileend">移动端工程师</option>
					</select>
				</p>
			</form>
			    <div>
			        <br>
			    </div>
			    <div class="button">
			        <button type="submit" class="login-btn register-btn" id="button">提交</button>
		        </div>
		        <div>
			        <br>
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
	    checkAllText: "全选", 
	    uncheckAllText: '全不选', 
	    selectedList:4 
	    }); 
	    });
	 $("#button").click(function(){
        var projectname = document.getElementById("projectname").value;
        var projectintro = document.getElementById("projectintro").value;
        var projectposition = null;
        var pos = $('#position :selected');
            pos.each(function () {
                if(projectposition == null){
                    projectposition = $(this).html();
                }
                else {
                    projectposition = projectposition+","+$(this).html();
                    alert(projectposition);
                }
            });  
        var project = {    
                    projectname:projectname,
                    projectcontent:projectintro,
                    projectposition:projectposition
                    };
             console.log(project);
	    $.ajax({
			url:"http://112.74.62.114:8080/Entity/U1ff54ed338bfc/testgen/Projectx/",
	    	type:"POST",
	    	contentType: "application/json",
	    	data:JSON.stringify(project),
	    	error:function(){
	    	    alert("添加试题失败");
	    	},//错误执行方法
	    	success:function(data){
                alert("添加项目成功");
           //     window.location.href = "showproject.jsp";
			} //成功执行方法
	    });
	    
	}); 
</script>
</body>
</html>
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
	<!-- <script src='../js/particles.js' type="text/javascript"></script> -->
	<!-- <script src='../js/background.js' type="text/javascript"></script> -->
	<script src='../js/layer/layer.js' type="text/javascript"></script>
	<script>
			        $.ajax({
						url:"http://112.74.62.114:8080/Entity/U1ff54ed338bfc/testgen/Question/",
				    	type:"GET",
				    	contentType: "application/json",
				    	error:function(){
				    	    alert("获取试题失败");
				    	},//错误执行方法
				    	success:function(data){
				    	    var len = data.Question.length;
				    	    var ques = null;
				    	    for(var i=0 ;i<len; i++){
				    	        var dtlist = data.Question[i];
				    	        if (ques == null){
				    	            ques = i+"&nbsp;&nbsp;" + dtlist.content+"&nbsp;&nbsp;"+dtlist.answer+"&nbsp;&nbsp;"+dtlist.level+"&nbsp;&nbsp;&nbsp;<button id="+dtlist.id+" onClick='delQuestion(this.id)'>删除</button></br><hr>";
					    	        
				    	        }
				    	        else{
				    	            ques = ques +" "+i+" "+dtlist.content+"&nbsp;&nbsp;"+dtlist.answer+"&nbsp;&nbsp;"+dtlist.level+"&nbsp;&nbsp;&nbsp;<button id="+dtlist.id+" onClick='delQuestion(this.id)'>删除</button></br><hr>";
				    	            
				    	        }
				    	        $("#test").html(ques);
			                }
						} //成功执行方法
				    });
				    function delQuestion(qid){
							            $.ajax({
								            async: false,
											url:"http://112.74.62.114:8080/Entity/U1ff54ed338bfc/testgen/Question/?Question.id="+qid,
									    	type:"PUT",
									    	contentType: "application/json",
									    	error:function(){
									    	    alert("删除试题失败");
									    	},
									    	success:function(data){
									    	    console.log(data);
									    	    alert("修改成功");
									    	}
									    	
								    	});
				                    }
			    </script>
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1>试题管理</h1>
	</div>

	<div class="cont-main clearfix">
		<div class="index-tab">
			<div class="index-slide-nav">
				<a href="add.jsp">添加</a>
				<a href="#">更新</a>			
			</div>
		</div>

		<div class="login form">
			<div class="group">
			    <span>编号</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>试题</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>答案</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>等级</span><hr>
			    <div id="test"> </div>
			    <br><br>
			</div>
		</div>

	</div>
</div>

<div class="footer">
	<p> 手机试题招聘平台</p>
</div>


</body>
</html>
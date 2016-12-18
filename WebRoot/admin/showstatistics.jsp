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
	/*  var settings = {
        type: "GET",
        url:"http://58.196.130.215/testgen/exam/statistic",
        dataType:"application/json",
        error: function(XHR,textStatus,errorThrown) {
            alert ("XHR="+XHR+"\ntextStatus="+textStatus+"\nerrorThrown=" + errorThrown);
        },
        success: function(data,textStatus) {
            
        },
        headers: {
            "Access-Control-Allow-Origin":"http://58.196.130.215/",
            "Access-Control-Allow-Headers":"X-Requested-With"
        }
    };
	     $.ajax(settings); */
		 $.ajax({
	       url:"/testgen/exam/statistic",
	       contentType:"application/json",
	       error:function(){
	          alert("获取统计数据失败");
	       },
	       success:function(data){
	       if(data){
			    data.sort(getSortFun('desc', 'accuracy'));
				function getSortFun(order, sortBy) { 
				    var ordAlpah = (order == 'asc') ? '>' : '<';
				    var sortFun = new Function('a', 'b', 'return a.' + sortBy + ordAlpah + 'b.' + sortBy + '?1:-1');
				    return sortFun;
				}
	           var str = null;
	           for (var i=0; i<data.length;i++){
	               var qid = data[i].id;
	               var accuracy =  data[i].accuracy;
	               console.log(qid);
	               console.log(accuracy);
	               if (i == 0){
	                  str = "<div class='f' value="+data[i].id+"><span>"+(i+1)+"</span><span>准确率："+data[i].accuracy+"</span></div>";
	               }
	               else{
	                  str = str +"<div class='f' value="+data[i].id+"><span>"+(i+1)+"</span><span>准确率："+data[i].accuracy+"</span></div>";
	               }
	           }
	       }
	       else {
	          alert("返回数据为空");
	       }
		  }
		     
	    }); 
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
				<a href="addquestion.jsp">添加</a>
				<a href="updatequestion.jsp">更新</a>
				<a href="showstatistics.jsp">统计</a>			
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
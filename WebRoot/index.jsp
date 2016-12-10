<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script></script>
	<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script>
	    function func(){
	       $.ajax({
                url: "http://112.74.62.114:8080/Entity/Uc29937e393de4/bus/Bus/",
                contentType: "application/json",
                type: "PUT",
                data: data,
                error: function () {
                    console.log(data);
                }
            });
	    }
	</script>
  </head>
  
  <body>
    This is my JSP page. <br>
    
    <button>提交 </button>
  </body>
</html>

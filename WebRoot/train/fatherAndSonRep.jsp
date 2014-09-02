<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>test</title>
	</head>
    <body>
    <p>父子格报表测试</p>
     <iframe id="reportDemo"  name="reportDemo" width="1000" height="800" src="ReportServer?reportlet=train/fatherAndSonRep.cpt"></iframe> 
     </body>
</html>

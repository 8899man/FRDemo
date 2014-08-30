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
    <p>测试</p>
     <iframe id="reportDemo"  name="reportDemo" width="1000" height="500" src="ReportServer?reportlet=picRep.cpt"></iframe> 
     </body>
</html>

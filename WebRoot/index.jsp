<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>link page</title>
  </head>
  
  <body>
  <a href="test.jsp">test</a><br/>
  <a href="writeRep.jsp">write</a><br/>
  <a href="picRep.jsp">picRep</a><br/>
  <a href="sheetRep.jsp">sheetRep</a><br/>
  </body>
</html>

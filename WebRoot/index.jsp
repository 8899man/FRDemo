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
  <a href="train/baseRep.jsp">基本报表测试</a><br/>
  <a href="train/fatherAndSonRep.jsp">父子格测试</a><br/>
  <a href="train/groupAndListRep.jsp">分组列表测试</a><br/>
  <a href="train/kuoZhanRep.jsp">扩展测试</a><br/>
  <a href="train/paramRep.jsp">参数测试</a><br/>
  <a href="train/muiltRep.jsp">多数据源报表测试</a><br/>
  <a href="train/biaoDanZhuZiRep.jsp">表单主子报表测试</a><br/>
  <a href="train/qianRuZhuZiRep.jsp">嵌入主子报表测试</a><br/>
  <a href="train/geJianYunSuan.jsp">格间运算报表测试</a><br/>
  <a href="train/shuJuZuanQu.jsp">数据钻取报表测试</a><br/>
  <a href="train/tianBao.jsp">填报报表测试</a><br/>
  </body>
</html>

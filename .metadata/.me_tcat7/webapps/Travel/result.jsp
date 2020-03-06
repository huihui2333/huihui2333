<%@ page language="java" import="java.util.*,user.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'result.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table align="center" width="500" border="1">
 
		<tr>
 
			<td colspan="6" align="center">
				<h2>所有留言信息</h2>
			</td>
 
		</tr>
 
		<tr align="center">
			<td><b>id</b></td>
			<td><b>username</b></td>
			<td><b>message</b></td>
		</tr>
 
		<%
		    List<message> list = (List<message>) request.getAttribute("list");
		    if (list == null || list.size() < 1) {
		        out.println("没有数据！");
		    } else {
		        for (message mess : list) {
		%>
 
		<tr align="center">
			<td><%=mess.getId()%></td>
			<td><%=mess.getUsername()%></td>
			<td><%=mess.getMessage()%></td>
			<td>
			<a href="DeleteServlet?id=<%=mess.getId() %>">删除</a>
			</td>
		</tr>
		<%
		        }
		    }
		%>
	</table>

  </body>
</html>

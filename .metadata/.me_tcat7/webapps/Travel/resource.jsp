<%@ page language="java" import="java.util.*,user.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'resource.jsp' starting page</title>
    
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
				<h2>所有景观资源</h2>
			</td>
 
		</tr>
 
		<tr align="center">
			<td><b>id</b></td>
			<td><b>image</b></td>
			<td><b>title</b></td>
			<td><b>essay</b></td>
		</tr>
 
		<%
		    List<resource> list = (List<resource>) request.getAttribute("list1");
		    if (list == null || list.size() < 1) {
		        out.println("没有数据！");
		    } else {
		        for (resource res : list) {
		%>
 
		<tr align="center">
			<td><%=res.getId()%></td>
			<td><%=res.getImage()%></td>
			<td><%=res.getTitle()%></td>
			<td><%=res.getEssay()%></td>
			<td>
			<a href="DeleteReServlet?id=<%=res.getId() %>">删除</a>
			</td>
		</tr>
		<%
		        }
		    }
		%>
	</table>
  </body>
</html>

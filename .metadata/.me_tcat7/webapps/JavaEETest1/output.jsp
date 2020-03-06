<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="product.Product" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    
    <title>My JSP 'output.jsp' starting page</title>
    
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
    This is my JSP page. <br>
    <% Product outdata=(Product)request.getSession().getAttribute("outdata"); %>
    <%=outdata.getName()%>
    <%=outdata.getId()%>  
    
    
  </body>
</html>

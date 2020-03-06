<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>企业二维码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script src="QRCode/qrcode.js"></script>

  </head>
  
  <body>
    <div id="qrcode"></div>
    
    <script type="text/javascript">
		
		// 设置参数方式
		var qrcode = new QRCode('qrcode', {
		  text: "http://localhost:8080/Recruit/student.jsp",
		  width: 256,
		  height: 256,
		  colorDark : '#000000',
		  colorLight : '#ffffff',
		  correctLevel : QRCode.CorrectLevel.H
		});
    </script>
  </body>
</html>

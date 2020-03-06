<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>招聘职位</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- 导入easyui的资源文件 -->
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
	<link id="themeLink" rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
	
	<script type="text/javascript" src="http://www.w3cschool.cc/try/jeasyui/datagrid-detailview.js"></script>
  </head>
  
  <body>
  	<div style="margin:20px 0 10px 0;"></div>
	<div class="easyui-accordion" data-options="multiple:true"
		style="width:500px;height1:300px;">
		<div title="Top Panel"
			data-options="iconCls:'icon-search',collapsed:false,collapsible:false"
			style="padding:10px;">
			<input class="easyui-searchbox" prompt="Enter something here"
				style="width:300px;height:25px;">
		</div>
		<div title="Language" style="overflow:auto;padding:10px;">
			<p>A programming language is a formal language designed to
				communicate instructions to a machine, particularly a computer.
				Programming languages can be used to create programs that control
				the behavior of a machine and/or to express algorithms precisely.</p>
		</div>
		<div title="Java" style="padding:10px;">
			<p>Java (Indonesian: Jawa) is an island of Indonesia. With a
				population of 135 million (excluding the 3.6 million on the island
				of Madura which is administered as part of the provinces of Java),
				Java is the world's most populous island, and one of the most
				densely populated places in the world.</p>
		</div>
		<div title="C#" style="padding:10px;">
			<p>C# is a multi-paradigm programming language encompassing
				strong typing, imperative, declarative, functional, generic,
				object-oriented (class-based), and component-oriented programming
				disciplines.</p>
		</div>
		<div title="Ruby" style="padding:10px;">
			<p>A dynamic, reflective, general-purpose object-oriented
				programming language.</p>
		</div>
		<div title="Fortran" style="padding:10px;">
			<p>Fortran (previously FORTRAN) is a general-purpose, imperative
				programming language that is especially suited to numeric
				computation and scientific computing.</p>
		</div>
	</div>
  </body>
</html>

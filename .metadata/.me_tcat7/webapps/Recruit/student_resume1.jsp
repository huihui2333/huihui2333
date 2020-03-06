<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>简历填写</title>   
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
  </head>
  
  <body>
	<div class="easyui-accordion">
		<div title="基本信息" style="overflow:auto;padding:10px;">
			<form id="editForm1" method="post">
				<%--提供id隐藏域 --%>
				<input type="hidden" name="indiResume_id">
				 姓         名：<input type="text" name="indiResume_name" class="easyui-textbox"
					data-options="prompt:'请输入姓名',required:true"/><br />
				 性         别：<input type="radio" name="indiResume_gender" value="男"/>男
		  			<input type="radio" name="indiResume_gender" value="女"/>女<br />
				 年         龄： <input type="text" name="indiResume_age" class="easyui-textbox"
					data-options="prompt:'请输入年龄',required:true"/><br />
				 生         源：<input type="text" name="indiResume_res" class="easyui-textbox"
					data-options="prompt:'请选择生源',required:true"/><br />
				 手         机： <input type="text" name="indiResume_telephone" class="easyui-textbox"
					data-options="prompt:'请输入手机号码',required:true"/><br />
				 自我评价： <input type="text" name="indiResume_evaluation" class="easyui-textbox"
						data-options="prompt:'请输入自我评价',required:false,multiline:true"
						style="width:300px;height:150px" /><br /><br />
				<a id="saveBtn1" href="#"
					class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
			</form>
		</div>
		<div title="求职意向" style="overflow:auto;padding:10px;">
			<form id="editForm2" method="post">
				工作城市：<input type="text" name="indiResume_res" class="easyui-combobox"
					data-options="prompt:'请选择工作城市',required:true"/><br />
				部         门： <input type="text" name="indiResume_age" class="easyui-textbox"
					data-options="prompt:'请输入年龄',required:true"/><br />
				职         位：<input type="text" name="indiResume_res" class="easyui-textbox"
					data-options="prompt:'请选择生源',required:true"/><br />
				期望薪资： <input type="text" name="indiResume_telephone" class="easyui-textbox"
					data-options="prompt:'请输入手机号码',required:true"/><br />
				到岗时间：<input class="easyui-datebox" data-options="prompt:'请选择到岗时间'>
				<a id="saveBtn2" href="#"
					class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
			</form>
		</div>
	</div>
</body>
</html>

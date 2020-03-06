<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>企业信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
		<link rel="stylesheet" type="text/css" href="styles.css">
		-->
	<!-- 导入easyui的资源文件 -->
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
	<link id="themeLink" rel="stylesheet" type="text/css"
		href="easyui/themes/default/easyui.css">
</head>

<body>
	<table id="list"></table>

	<div id="tb">
		<a id="editBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">修改</a>
	</div>

	<div id="win" class="easyui-window" title="企业信息编辑" style="width:600px;height:500px" data-options="iconCls:'icon-save',modal:true,closed:true,multiline:true">
		<form id="editForm" method="post">
			<%--提供id隐藏域 --%>
	    	<input type="hidden" name="company_id">
			公司简介： <br /><input type="text" name="company_profile" class="easyui-textbox"
				data-options="prompt:'请输入公司简介',required:true,multiline:true"
				style="width:500px;height:200px" /><br /><br />
			 发展历程： <br /><input type="text" name="development_history" class="easyui-textbox"
				data-options="prompt:'请输入发展历程',required:true,multiline:true"
				style="width:500px;height:200px" /><br /><br />
			 企业文化： <br /><input type="text" name="corporate_culture" class="easyui-textbox"
				data-options="prompt:'请输入企业文化',required:true,multiline:true"
				style="width:500px;height:200px" /><br /><br /> 
			所具优势： <br /><input type="text" name="advantage" class="easyui-textbox"
				data-options="prompt:'请输入所具优势',required:true,multiline:true"
				style="width:500px;height:200px" /><br /><br /> 
			招聘计划： <br /><input type="text" name="recuitment_plan" class="easyui-textbox"
				data-options="prompt:'请输入招聘计划',required:true,multiline:true"
				style="width:500px;height:200px" /><br /><br /> 
			联系电话：<input type="text" name="contact_way" class="easyui-textbox"
				data-options="required:true" /><br /> 
			企业邮箱：<input type="text" name="company_email" class="easyui-textbox" 
				data-options="required:true" /><br />
			<a id="saveBtn" href="#" class="easyui-linkbutton"
				data-options="iconCls:'icon-save'">保存</a>
		</form>
	</div>
	
	<script type="text/javascript">
  		$(function(){	
  			$("#list").datagrid({
  				//url:后台数据查询的地址
  				url:"customer/listEnterpriseByPage.action",
  				//columns：填充的列数据
  					//field:后台对象的属性
  					//tille:列标题
  				columns:[[
  					{
  						field:"company_id",
  						title:"编号",
  						width:100,
  						checkbox:true
  					},
  					{
  						field:"company_profile",
  						title:"公司简介",
  						width:200
  					},
  					{
  						field:"development_history",
  						title:"发展历程",
  						width:200
  					},
  					{
  						field:"corporate_culture",
  						title:"企业文化",
  						width:200
  					},
  					{
  						field:"advantage",
  						title:"所具优势",
  						width:200
  					},
  					{
  						field:"recuitment_plan",
  						title:"招聘计划",
  						width:200
  					},
  					{
  						field:"contact_way",
  						title:"联系电话",
  						width:200
  					},
  					{
  						field:"company_email",
  						title:"联系邮箱",
  						width:200
  					}
  				]],
  				//显示分页
  				pagination:true,
  				//工具条
  				toolbar:"#tb"
  			});
  			
  			//保存数据
  			$("#saveBtn").click(function(){
  				$("#editForm").form("submit",{
  					//url: 提交到后台的地址
  					url:"customer/saveEnterpriseInfo.action",
  					//onSubmit: 表单提交前的回调函数，true：提交表单   false：不提交表单
  					onSubmit:function(){
  						//判断表单的验证是否都通过了
  						return $("#editForm").form("validate");
  					},
  					//success:服务器执行完毕回调函数
  					success:function(data){ //data: 服务器返回的数据，类型字符串类
  						//要求Controller返回的数据格式：  
  						//成功：{success:true} 失败:{success:false,msg:错误信息}
  						
  						//把data字符串类型转换对象类型
  						data = eval("("+data+")");
  						
  						if(data.success){
  							//关闭窗口
  							$("#win").window("close");
  							//刷新datagrid
  							$("#list").datagrid("reload");
  							
  							$.messager.alert("提示","保存成功","info");
  						}else{
  							$.messager.alert("提示","保存失败："+data.msg,"error");
  						}
   					}
  				});
  				
  			});
  			
  			//修改数据
  			$("#editBtn").click(function(){
  				//判断只能选择一行
  				var rows = $("#list").datagrid("getSelections");
  				if(rows.length!=1){
  					$.messager.alert("提示","编辑操作只能选择一行","warning");
  					return;
  				}
  				
  				//表单回显
  				$("#editForm").form("load","customer/findEnterpriseInfo.action?id="+rows[0].company_id);
  				
  				$("#win").window("open");
  			});
  		
  		});
  	</script>
	</body>
</html>

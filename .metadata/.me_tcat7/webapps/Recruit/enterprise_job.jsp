<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>招聘计划</title>
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
  	
  	<!-- 工具条 -->
  	<div id="tb">
  	    <a id="searchBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true">查看</a>
		<a id="addBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">添加</a>
		<a id="editBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">修改</a>
		<a id="deleteBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</a>
	</div>
	
	<!-- 编辑窗口 -->
	<div id="win" class="easyui-window" title="招聘计划编辑" style="width:600px;height:500px"   
        data-options="iconCls:'icon-save',modal:true,closed:true">   
	    <form id="editForm" method="post">
	    	<%--提供id隐藏域 --%>
	    	<input type="hidden" name="job_id">  	
				所属部门：<select class="easyui-combobox" name="job_depart"data-options="prompt:'请选择部门',required:true">
				        <option value="行政部">行政部</option>
				        <option value="财务部">财务部</option>
				        <option value="质量管理部">质量管理部</option>
				        <option value="营销部">营销部</option>
				        <option value="营运部">营运部</option>
				        <option value="技术部">技术部</option>
				        <option value="维修部">维修部</option>
				        <option value="人力资源部">人力资源部</option>
				        <option value="客户服务部">客户服务部</option>
				    </select><br /><br />
				工作城市：<select class="easyui-combobox" name="job_city"data-options="prompt:'请选择工作城市',multiple:true,required:true">
				        <option value="北京">北京</option>
				        <option value="上海">上海</option>
				        <option value="广州">广州</option>
				        <option value="深圳">深圳</option>
				        <option value="南宁">南宁</option>
				    </select><br /><br /> <br /><br />
				职位名称：<input type="text"
					name="job_name" class="easyui-textbox" data-options="required:true" /><br /><br /> 
				职位描述： <br /><input type="text" name="job_describe" class="easyui-textbox"
					data-options="prompt:'请输入职位描述',required:true,multiline:true"
					style="width:500px;height:200px" /><br /><br /> 
				任职要求： <br /><input type="text" name="requirements" class="easyui-textbox"
					data-options="prompt:'请输入任职要求',required:true,multiline:true"
					style="width:500px;height:200px" /><br /><br /> 
				<a id="saveBtn" href="#" class="easyui-linkbutton"
					data-options="iconCls:'icon-save'">保存</a>
 	    </form> 
	</div>  
	
	<div id="winn" class="easyui-window" title="查看招聘职位" style="width:600px;height:500px"   
        data-options="iconCls:'icon-save',modal:true,closed:true">   
        <form id="searchForm" method="post">
	    	<%--提供id隐藏域 --%>
	    	<input type="hidden" name="job_id">  	
				所属部门：<input type="text" name="job_depart" class="easyui-textbox"
					data-options="required:false" /><br /> <br />
				工作城市：<input type="text" name="job_city" class="easyui-textbox"
					data-options="required:false"  /><br /><br /> 
				职位名称：<input type="text" name="job_name" class="easyui-textbox"
					data-options="required:false" /><br /><br /> 
				职位描述： <br /><input type="text" name="job_describe" class="easyui-textbox"
					data-options="prompt:'请输入职位描述',required:false,multiline:true"
					style="width:500px;height:200px" /><br /><br /> 
				任职要求： <br /><input type="text" name="requirements" class="easyui-textbox"
					data-options="prompt:'请输入任职要求',required:false,multiline:true"
					style="width:500px;height:200px" /><br /><br />
 	    </form> 
	</div>  
  
  	<script type="text/javascript">
  		$(function(){
  			$("#list").datagrid({
  				//url:后台数据查询的地址
  				url:"customer/listJobByPage.action",
  				//columns：填充的列数据
  					//field:后台对象的属性
  					//tille:列标题
  				columns:[[
  					{
  						field:"job_id",
  						title:"职位编号",
  						width:100,
  						checkbox:true
  					},
  					{
  						field:"job_depart",
  						title:"所属部门",
  						width:200
  					},
  					{
  						field:"job_city",
  						title:"工作城市",
  						width:200
  					},
  					{
  						field:"job_name",
  						title:"职位名称",
  						width:200
  					},
  					{
  						field:"job_describe",
  						title:"职位描述",
  						width:200
  					},
  					{
  						field:"requirements",
  						title:"职位要求",
  						width:200
  					}
  				]],
  				//显示分页
  				pagination:true,
  				//工具条
  				toolbar:"#tb"
  			});
  			
  			//打开编辑窗口
  			$("#addBtn").click(function(){
  				//清空表单数据
  				$("#editForm").form("clear");
  				$("#win").window("open");
  			});
  			
  			//保存数据
  			$("#saveBtn").click(function(){
  				$("#editForm").form("submit",{
  					//url: 提交到后台的地址
  					url:"customer/saveJob.action",
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
  			
  			//查看数据
  			$("#searchBtn").click(function(){
  				//判断只能选择一行
  				var rows = $("#list").datagrid("getSelections");
  				if(rows.length!=1){
  					$.messager.alert("提示","查看操作只能选择一行","warning");
  					return;
  				}
  				
  				//表单回显
  				$("#searchForm").form("load","customer/findJobById.action?id="+rows[0].job_id);
  				
  				$("#winn").window("open");
  			});
  			
  			//修改数据
  			$("#editBtn").click(function(){
  				//判断只能选择一行
  				var rows = $("#list").datagrid("getSelections");
  				if(rows.length!=1){
  					$.messager.alert("提示","修改操作只能选择一行","warning");
  					return;
  				}
  				
  				//表单回显
  				$("#editForm").form("load","customer/findJobById.action?id="+rows[0].job_id);
  				
  				$("#win").window("open");
  			});
  			
  			//删除
  			$("#deleteBtn").click(function(){
  				var rows =$("#list").datagrid("getSelections");
  				if(rows.length==0){
  					$.messager.alert("提示","删除操作至少选择一行","warning");
  					return;
  				}
  				
  				//格式： id=1&id=2&id=3
  				$.messager.confirm("提示","确认删除数据吗?",function(value){
  					if(value){
  						var idStr = "";
  						//遍历数据
  						$(rows).each(function(i){
  							idStr+=("id="+rows[i].job_id+"&");
  						});
  						idStr = idStr.substring(0,idStr.length-1);
						
  						//传递到后台
  						$.post("customer/deleteJob.action",idStr,function(data){
  							if(data.success){
  	  							//刷新datagrid
  	  							$("#list").datagrid("reload");
  	  							
  	  							$.messager.alert("提示","删除成功","info");
  	  						}else{
  	  							$.messager.alert("提示","删除失败："+data.msg,"error");
  	  						}
  						},"json");
  					}
  				});
  			});
  		});
  	
  	</script>
	</body>
</html>

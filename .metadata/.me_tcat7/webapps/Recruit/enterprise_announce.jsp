<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>公告管理</title>
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
	<div id="win" class="easyui-window" title="公告编辑" style="width:500px;height:300px"   
        data-options="iconCls:'icon-save',modal:true,closed:true">   
	    <form id="editForm" method="post">
	    	<%--提供id隐藏域 --%>
	    	<input type="hidden" name="announce_id">  	
				收件账号： <input type="text" name="user_id" class="easyui-textbox"
					data-options="required:true" style="width:150px"/><br /> 
				公告标题： <input type="text" name="announce_title" class="easyui-textbox"
					data-options="required:true" style="width:150px" /><br /><br /> 
				公告内容： <br /><input type="text" name="announce_content" class="easyui-textbox"
					data-options="prompt:'请输入内容',required:true,multiline:true"
					style="width:500px;height:200px" /><br /><br /> 
			              公告类型：
			        <input type="radio" name="announce_type" value="笔试">笔试
			        <input type="radio" name="announce_type" value="面试">面试
			        <input type="radio" name="announce_type" value="中奖">中奖<br/>
				<a id="saveBtn" href="#" class="easyui-linkbutton"
					data-options="iconCls:'icon-save'">提交</a>
 	    </form> 
	</div>  
	
	<div id="winn" class="easyui-window" title="查看公告" style="width:500px;height:300px"   
        data-options="iconCls:'icon-save',modal:true,closed:true">   
        <form id="searchForm" method="post">
	    	<%--提供id隐藏域 --%>
	    	<input type="hidden" name="announce_id">  	 
				收件账号： <input type="text" name="user_id" class="easyui-textbox"
					data-options="required:false" style="width:150px"/><br /> 
				公告标题： <input type="text" name="announce_title" class="easyui-textbox"
					data-options="required:false" style="width:150px" /><br /><br /> 
				公告内容： <br /><input type="text" name="announce_content" class="easyui-textbox"
					data-options="prompt:'请输入内容',required:false,multiline:true"
					style="width:500px;height:200px" /><br /><br /> 
				公告类型：<input type="text" name="announce_type" class="easyui-textbox"
					data-options="required:false" style="width:150px"/><br /> 
				发布时间：<input type="text" name="announce_time" class="easyui-textbox"
					data-options="required:false" style="width:150px"/><br /><br />
 	    </form> 
	</div>  
  
  	<script type="text/javascript">
  		$(function(){
  			$("#list").datagrid({
  				//url:后台数据查询的地址
  				url:"customer/listAnnounceByPage.action",
  				//columns：填充的列数据
  					//field:后台对象的属性
  					//tille:列标题
  				columns:[[
  					{
  						field:"announce_id",
  						title:"公告编号",
  						width:100,
  						checkbox:true
  					},
  					{
  						field:"user_id",
  						title:"收件账号",
  						width:200
  					},
  					{
  						field:"announce_title",
  						title:"公告标题",
  						width:200
  					},
  					{
  						field:"announce_content",
  						title:"公告内容",
  						width:200
  					},
  					{
  						field:"announce_type",
  						title:"公告类型",
  						width:200
  					},
  					{
  						field:"announce_time",
  						title:"发布时间",
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
  					url:"customer/saveAnnounce.action",
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
  				$("#searchForm").form("load","customer/findAnnounceById.action?id="+rows[0].announce_id);
  				
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
  				$("#editForm").form("load","customer/findAnnounceById.action?id="+rows[0].announce_id);
  				
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
  							idStr+=("id="+rows[i].announce_id+"&");
  						});
  						idStr = idStr.substring(0,idStr.length-1);
						
  						//传递到后台
  						$.post("customer/deleteAnnounce.action",idStr,function(data){
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

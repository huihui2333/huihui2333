<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户注册</title>   
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	
	<script type="text/javascript"> 
         function check() { 
             var username = $("#username").val(); 
             var password = $("#password").val();
             if (username == null || username == "") { 
                 alert("用户名不能为空！"); 
                 return; 
             } 
             if (password == null || password == "") { 
                 alert("密码不能为空！"); 
                 return; 
             }
             var password2 = $("#password2").val();
             if (password2!=password) { 
                 alert("密码不一致！"); 
                 return; 
             }          
            $("#reForm").submit(); 
         } 
    </script> 
  </head>
  
  <body>
    <div id="w" class="easyui-window" title="请先注册" data-options="modal:true,iconCls:'Lockgo',closable:false,minimizable:false" style="width:400px;padding:20px 70px 20px 70px;">
        <form id="reForm" method="post" action="login.jsp" >
	        <div style="margin-bottom:10px">
	            <input class="easyui-textbox" id="username" name="username" value="${username}" type="text" style="width:100%;height:30px;padding:12px" data-options="prompt:'注册账号',iconCls:'icon-man',iconWidth:38">
	        </div>
	        <div style="margin-bottom:10px">
	            <input class="easyui-textbox" id="password" name="password" value="${password}" type="password" style="width:100%;height:30px;padding:12px" data-options="prompt:'注册密码',iconCls:'icon-lock',iconWidth:38">
	        </div>
	        <div style="margin-bottom:20px">
	            <input class="easyui-textbox" id="password2" name="password2" value="${password2}" type="password" style="width:100%;height:30px;padding:12px" data-options="prompt:'确认密码',iconCls:'icon-lock',iconWidth:38">
	        </div>
	        <div>
	            <a id="reBtn" href="#" onclick="check()" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;">
	                <span style="font-size:14px;">注册</span>
	            </a>
	        </div>
        </form>
    </div>
    
    <script type="text/javascript">
    	$(function(){
    		$("#reBtn").click(function(){
  				$("#reForm").form("submit",{
  					//url: 提交到后台的地址
  					url:"customer/regist.action",
  					//onSubmit: 表单提交前的回调函数，true：提交表单   false：不提交表单
  					onSubmit:function(){
  					},
  					//success:服务器执行完毕回调函数
  					success:function(data){ //data: 服务器返回的数据，类型字符串类
  						//要求Controller返回的数据格式：  
  						//成功：{success:true} 失败:{success:false,msg:错误信息}
  						
  						//把data字符串类型转换对象类型
   					}
  				});
  				
  			});
    	});
    </script>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0">
	<script type="text/javascript" charset="utf-8" src="//g.alicdn.com/sd/nch5/index.js?t=2015052012"></script>
	
	<!-- 导入easyui的资源文件 -->
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
	<link id="themeLink" rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
	
	<script type="text/javascript"> 
         function login() { 
             var username = $("#username").val(); 
             var password = $("#password").val();
             if ((username == null) ||( username == "")||(password == null )|| (password == "")) { 
                 alert("用户名或密码不能为空！"); 
                 return; 
             }
            $("#loginForm").submit(); 
         } 
    </script> 
  </head>
  
  <body>
    <div id="w" class="easyui-window" title="请先登录" data-options="modal:true,iconCls:'Lockgo',closable:false,minimizable:false" style="width:400px;padding:20px 70px 20px 70px;">
         <form id="loginForm" method="post" action="${pageContext.request.contextPath}/customer/login.action">
	        <div style="margin-bottom:10px">
	            <input class="easyui-textbox" id="username" name="username" type="text" value="${username}" style="width:100%;height:30px;padding:12px" data-options="prompt:'登录账号',iconCls:'icon-man',iconWidth:38">
	        </div>
	        <div style="margin-bottom:10px">
	            <input class="easyui-textbox" id="password" name="password" type="password" value="${password}" style="width:100%;height:30px;padding:12px" data-options="prompt:'登录密码',iconCls:'icon-lock',iconWidth:38">
	        </div>
	        
	        <div id="__nc" style="margin-bottom:20px">
				<div id="nc" style="width:100%;height:30px;padding:12px"></div>
			</div>
	        
	        <div style="margin-bottom:20px">
	            <input type="checkbox" checked="checked" id="logrem">
	            <span>Remember me</span>
	        </div>
	        <div>
	            <a id="loginBtn" href="#" onclick="login()" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;">
	                <span style="font-size:14px;">登录</span>
	            </a>
	        </div>
	        <div>
	            <div style="display:inline;margin-left:120px;">
	                <a href="regist.jsp">还未注册？</a>
	            </div>
	        </div> 
	        <div style="width:100%;height:30px;padding:12px">
	            <font color="red">${errorMsg}</font>
	        </div>        
        </form>  
    </div>

	<script>
		var nc_token = [ "CF_APP_1", (new Date()).getTime(), Math.random() ]
				.join(':');
		var nc = NoCaptcha.init({
			renderTo : '#nc',
			appkey : 'CF_APP_1',
			scene : 'register',
			token : nc_token,
			trans : {
				"key1" : "code200"
			},
			elementID : [ "usernameID" ],
			is_Opt : 0,
			language : "cn",
			timeout : 10000,
			retryTimes : 5,
			errorTimes : 5,
			inline : false,
			apimap : {
			// 'analyze': '//a.com/nocaptcha/analyze.jsonp',
			// 'uab_Url': '//aeu.alicdn.com/js/uac/909.js',
			},
			bannerHidden : false,
			initHidden : false,
			callback : function(data) {
				window.console && console.log(nc_token)
				window.console && console.log(data.csessionid)
				window.console && console.log(data.sig)
			},
			error : function(s) {
			}
		});
		NoCaptcha.setEnabled(true);
		nc.reset();//请务必确保这里调用一次reset()方法

		NoCaptcha.upLang('cn', {
			'LOADING' : "加载中...",//加载
			'SLIDER_LABEL' : "请向右滑动验证",//等待滑动
			'CHECK_Y' : "验证通过",//通过
			'ERROR_TITLE' : "非常抱歉，这出错了...",//拦截
			'CHECK_N' : "验证未通过", //准备唤醒二次验证
			'OVERLAY_INFORM' : "经检测你当前操作环境存在风险，请输入验证码",//二次验证
			'TIPS_TITLE' : "验证码错误，请重新输入"//验证码输错时的提示
		});
	</script>


	<script type="text/javascript">
    	$(function(){
    		$("#loginBtn").click(function(){
  				$("#loginForm").form("submit",{
  					type:"POST",
  					//url: 提交到后台的地址
  					url:"customer/login.action",
  					//onSubmit: 表单提交前的回调函数，true：提交表单   false：不提交表单
  					onSubmit:function(){
  					},
  					//success:服务器执行完毕回调函数
  					success:function(data){ //data: 服务器返回的数据，类型字符串类
  						//要求Controller返回的数据格式：  
  						//成功：{success:true} 失败:{success:false,msg:错误信息}
  						
  						//把data字符串类型转换对象类型
  						data = eval("("+data+")");
  						if(data.success){
  							
  							alert("123");
  						}else{
  							alert("456");
  						}
   					}
  				});
  			});
    	});
    </script>
  </body>
</html>

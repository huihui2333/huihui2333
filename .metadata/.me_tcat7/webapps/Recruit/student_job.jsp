<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    Date date = new Date();
    String nowDate = sdf.format(date);
%>

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
  	<table id="list"></table>
  	
  	<!-- 工具条 -->
  	<div id="tb">
  	    <a id="searchBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true">查看</a>
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
	 
	 <div>
	    <!-- 留言的表单 -->
	    <form id="wordsForm" method="post">
	        <input name="lw_name" value="${currentUser.username}" type="hidden" style="width:150px"/>
	        <input name="lw_date" value="<%=nowDate%>" type="hidden" style="width:150px"/>
	        <input name="lw_for_article_id" value="${job.job_id}" type="hidden" style="width:150px"/>
	        <div style="margin-left: 0;">
	        	<input id="lw_content" type="text" name="lw_content" class="easyui-textbox"
					data-options="prompt:'请输入你的留言',required:false,multiline:true"
					style="width:300px;height:100px" />
	        </div>
	        <br/>
	        <div style="text-align: left;margin-left: 0;">
	            <a id="wordsBtn" href="#" class="easyui-linkbutton" data-options="">留言</a>
	        </div>
	    </form>
	    <br/>
	    <!-- 留言信息列表展示 -->
	    <div>
	        <ul>
	            <!-- 先遍历留言信息（一条留言信息，下面的全是回复信息） -->
	            <c:forEach items="${requestScope.lw_list}" var="words">
	                <!-- 如果留言信息是在本文章下的才显示 -->
	                <c:if test="${words.lw_for_article_id eq job.job_id}">
	                    <li style="border-top: 1px dotted #01AAED">
	                        <br/>
	                        <div style="text-align: left;color:#444">
	                            <div>
	                                <span style="color:#01AAED">${words.lw_name}</span>
	                            </div>
	                            <div>${words.lw_content}</div>
	                        </div>
	                        <div>
	                            <div class="comment-parent" style="text-align:left;margin-top:7px;color:#444">
	                                <span>${words.lw_date}</span>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <p>
	                                    <a href="javascript:;" onclick="btnReplyClick(this)">回复</a>
	                                </p>
	                                <hr style="margin-top: 7px;"/>
	                            </div>
	                            <!-- 回复表单默认隐藏 -->
	                            <div id="replyContainer" style="margin-left: 61px;">
	                                <form id="replyForm" method="post">
	                                    <input name="lr_for_article_id" id="lr_for_article_id" value="${job.job_id}" type="hidden"/>
	                                    <input name="lr_name" id="lr_name" value="${currentUser.username}" type="hidden"/>
	                                    <input name="lr_date" id="lr_date" value="<%=nowDate%>" type="text" type="hidden"/>
	                                    <input name="lr_for_name" id="lr_for_name" value="${words.lw_name}" type="hidden"/>
	                                    <input name="lr_for_words" id="lr_for_words" value="${words.lw_id}" type="hidden"/>
	                                    <input name="lr_for_reply" id="lr_for_reply" value="${reply.lr_id}" type="hidden"/>
	                                    <div>
	                                        <input id="lr_content" type="text" name="lr_content" class="easyui-textbox"
												data-options="prompt:'请输入回复内容',required:true,multiline:true"
												style="width:200px;height:100px" />
	                                    </div>
	                                    <div>
	                                        <a id="replyBtn" href="#" class="easyui-linkbutton" data-options="">提交</a>
	                                    </div>
	                                </form>
	                            </div>
	                        </div>
	
	                        <!-- 以下是回复信息 -->
	                        <c:forEach items="${requestScope.lr_list}" var="reply">
	                            <!-- 每次遍历出来的留言下存在回复信息才展示（本条回复信息是本条留言下的就显示在当前留言下） -->
	                            <c:if test="${reply.lr_for_article_id eq job.job_id && reply.lr_for_words eq words.lw_id}">
	                                <div style="text-align: left;margin-left:61px;color: #444">
	                                    <div>
	                                        <span style="color:#5FB878">${reply.lr_name}&nbsp;&nbsp;</span>
	                                    </div>
	                                    <div>@${reply.lr_for_name}:&nbsp;&nbsp; ${reply.lr_content}</div>
	                                </div>
	                                <div>
	                                    <div class="comment-parent" style="text-align:left;margin-top:7px;margin-left:61px;color:#444">
	                                        <span>${reply.lr_date}</span>
	                                        &nbsp;&nbsp;&nbsp;&nbsp;
	                                        <p>
	                                            <a href="javascript:;" onclick="btnReplyClick(this)">回复</a>
	                                        </p>
	                                        <hr style="margin-top: 7px;"/>
	                                    </div>
	                                    <!-- 回复表单默认隐藏 -->
	                                    <div id="replyContainer2" style="margin-left: 61px;">
	                                        <form id="replyForm2" method="post">
	                                            <input name="lr_for_article_id" id="lr_for_article_id" value="${job.job_id}" type="hidden"/>
	                                            <input name="lr_name" id="lr_name" value="${currentUser.username}" type="hidden"/>
	                                            <input name="lr_date" id="lr_date" value="<%=nowDate%>" type="hidden"/>
	                                            <input name="lr_for_name" id="lr_for_name" value="${words.lw_name}" type="hidden"/>
	                                            <input name="lr_for_words" id="lr_for_words" value="${words.lw_id}" type="hidden"/>
	                                            <input name="lr_for_reply" id="lr_for_reply" value="${reply.lr_id}" type="hidden"/>
	                                            <div>
	                                                <input id="lr_content" type="text" name="lr_content" class="easyui-textbox"
														data-options="prompt:'请输入回复内容',required:true,multiline:true"
														style="width:200px;height:100px" />
	                                                      @${words.lw_name}:&nbsp;&nbsp;
	                                            </div>
	                                            <div>
	                                                <a id="replyBtn" href="#" class="easyui-linkbutton" data-options="">提交</a>
	                                            </div>
	                                        </form>
	                                    </div>
	                                </div>
	                            </c:if>
	                        </c:forEach>
	                    </li>
	                </c:if>
	            </c:forEach>
	        </ul>
	    </div>
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
  		})
  	</script>
  	
  	

	<script type="text/javascript">
		function btnReplyClick(elem) {
	        var $ = easyui.jquery;
	        if($(this)){
	        }else if(!$(this)){
	            $(elem).parent('p').parent('.comment-parent').siblings('.replycontainer').toggleClass('easyui-show');
	        }
	        $(elem).parent('p').parent('.comment-parent').siblings('.replycontainer').toggleClass('easyui-hide');
	        if ($(elem).text() == '回复') {
	            $(elem).text('收起')
	        } else {
	            $(elem).text('回复')
	        }
	    }
	
		$("#wordsBtn").click(function(){
			$("#wordsForm").form("submit",{
				//url: 提交到后台的地址
				url:"customer/saveWords.action",
				//onSubmit: 表单提交前的回调函数，true：提交表单   false：不提交表单
				onSubmit:function(){
					//判断表单的验证是否都通过了
					return $("#wordsForm").form("validate");
				},
				//success:服务器执行完毕回调函数
				success:function(data){ //data: 服务器返回的数据，类型字符串类
					//要求Controller返回的数据格式：  
					//成功：{success:true} 失败:{success:false,msg:错误信息}
					
					//把data字符串类型转换对象类型
					data = eval("("+data+")");
					
					if(data.success){
						$.messager.alert("提示","保存成功","info");
					}else{
						$.messager.alert("提示","保存失败："+data.msg,"error");
					}
				}
			});
		});
  			
	    $("#replyBtn").click(function(){
	        $("#replyForm").form("submit",{
				//url: 提交到后台的地址
				url:"customer/saveReply.action",
				//onSubmit: 表单提交前的回调函数，true：提交表单   false：不提交表单
				onSubmit:function(){
					//判断表单的验证是否都通过了
					return $("#replyForm").form("validate");
				},
				//success:服务器执行完毕回调函数
				success:function(data){ //data: 服务器返回的数据，类型字符串类
					//要求Controller返回的数据格式：  
					//成功：{success:true} 失败:{success:false,msg:错误信息}
					
					//把data字符串类型转换对象类型
					data = eval("("+data+")");
					
					if(data.success){
						$.messager.alert("提示","保存成功","info");
					}else{
						$.messager.alert("提示","保存失败："+data.msg,"error");
					}
				}
			});
	    });
	</script>
  </body>
</html>

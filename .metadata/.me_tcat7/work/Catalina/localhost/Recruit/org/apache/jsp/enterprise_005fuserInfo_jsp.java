/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.56
 * Generated at: 2020-02-18 03:35:49 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class enterprise_005fuserInfo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <title>用户信息</title>   \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t<!-- 导入easyui的资源文件 -->\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"easyui/jquery.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"easyui/jquery.easyui.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"easyui/locale/easyui-lang-zh_CN.js\"></script>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"easyui/themes/icon.css\">\r\n");
      out.write("\t<link id=\"themeLink\" rel=\"stylesheet\" type=\"text/css\" href=\"easyui/themes/default/easyui.css\">\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("  \t<table id=\"list\"></table>\r\n");
      out.write("  \t\r\n");
      out.write("  \t<!-- 工具条 -->\r\n");
      out.write("  \t<div id=\"tb\">\r\n");
      out.write("\t\t<a id=\"addBtn\" href=\"#\" class=\"easyui-linkbutton\" data-options=\"iconCls:'icon-add',plain:true\">添加</a>\r\n");
      out.write("\t\t<a id=\"editBtn\" href=\"#\" class=\"easyui-linkbutton\" data-options=\"iconCls:'icon-edit',plain:true\">修改</a>\r\n");
      out.write("\t\t<a id=\"deleteBtn\" href=\"#\" class=\"easyui-linkbutton\" data-options=\"iconCls:'icon-remove',plain:true\">删除</a>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- 编辑窗口 -->\r\n");
      out.write("\t<div id=\"win\" class=\"easyui-window\" title=\"客户数据编辑\" style=\"width:500px;height:300px\"   \r\n");
      out.write("        data-options=\"iconCls:'icon-save',modal:true,closed:true\">   \r\n");
      out.write("\t    <form id=\"editForm\" method=\"post\">\r\n");
      out.write("\t    \t");
      out.write("\r\n");
      out.write("\t    \t<input type=\"hidden\" name=\"id\">\r\n");
      out.write("\t\t  \t客户姓名：<input type=\"text\" name=\"name\" class=\"easyui-validatebox\" data-options=\"required:true\"/><br/>\r\n");
      out.write("\t\t  \t客户性别：\r\n");
      out.write("\t\t  \t<input type=\"radio\" name=\"gender\" value=\"男\"/>男\r\n");
      out.write("\t\t  \t<input type=\"radio\" name=\"gender\" value=\"女\"/>女\r\n");
      out.write("\t\t  \t<br/>\r\n");
      out.write("\t\t  \t客户手机：<input type=\"text\" name=\"telephone\" class=\"easyui-validatebox\" data-options=\"required:true\"/><br/>\r\n");
      out.write("\t\t  \t客户住址：<input type=\"text\" name=\"address\" class=\"easyui-validatebox\" data-options=\"required:true\"/><br/>\r\n");
      out.write("\t  \t<a id=\"saveBtn\" href=\"#\" class=\"easyui-linkbutton\" data-options=\"iconCls:'icon-save'\">保存</a>\r\n");
      out.write(" \t </form> \r\n");
      out.write("\t</div>  \r\n");
      out.write("  \r\n");
      out.write("  \t<script type=\"text/javascript\">\r\n");
      out.write("  \t\t$(function(){\r\n");
      out.write("  \t\t\t$(\"#list\").datagrid({\r\n");
      out.write("  \t\t\t\t//url:后台数据查询的地址\r\n");
      out.write("  \t\t\t\turl:\"customer/listByPage.action\",\r\n");
      out.write("  \t\t\t\t//columns：填充的列数据\r\n");
      out.write("  \t\t\t\t\t//field:后台对象的属性\r\n");
      out.write("  \t\t\t\t\t//tille:列标题\r\n");
      out.write("  \t\t\t\tcolumns:[[\r\n");
      out.write("  \t\t\t\t\t{\r\n");
      out.write("  \t\t\t\t\t\tfield:\"id\",\r\n");
      out.write("  \t\t\t\t\t\ttitle:\"客户编号\",\r\n");
      out.write("  \t\t\t\t\t\twidth:100,\r\n");
      out.write("  \t\t\t\t\t\tcheckbox:true\r\n");
      out.write("  \t\t\t\t\t},\r\n");
      out.write("  \t\t\t\t\t{\r\n");
      out.write("  \t\t\t\t\t\tfield:\"name\",\r\n");
      out.write("  \t\t\t\t\t\ttitle:\"客户姓名\",\r\n");
      out.write("  \t\t\t\t\t\twidth:200\r\n");
      out.write("  \t\t\t\t\t},\r\n");
      out.write("  \t\t\t\t\t{\r\n");
      out.write("  \t\t\t\t\t\tfield:\"gender\",\r\n");
      out.write("  \t\t\t\t\t\ttitle:\"客户性别\",\r\n");
      out.write("  \t\t\t\t\t\twidth:200\r\n");
      out.write("  \t\t\t\t\t},\r\n");
      out.write("  \t\t\t\t\t{\r\n");
      out.write("  \t\t\t\t\t\tfield:\"telephone\",\r\n");
      out.write("  \t\t\t\t\t\ttitle:\"客户手机\",\r\n");
      out.write("  \t\t\t\t\t\twidth:200\r\n");
      out.write("  \t\t\t\t\t},\r\n");
      out.write("  \t\t\t\t\t{\r\n");
      out.write("  \t\t\t\t\t\tfield:\"address\",\r\n");
      out.write("  \t\t\t\t\t\ttitle:\"客户住址\",\r\n");
      out.write("  \t\t\t\t\t\twidth:200\r\n");
      out.write("  \t\t\t\t\t}\r\n");
      out.write("  \t\t\t\t]],\r\n");
      out.write("  \t\t\t\t//显示分页\r\n");
      out.write("  \t\t\t\tpagination:true,\r\n");
      out.write("  \t\t\t\t//工具条\r\n");
      out.write("  \t\t\t\ttoolbar:\"#tb\"\r\n");
      out.write("  \t\t\t});\r\n");
      out.write("  \t\t\t\r\n");
      out.write("  \t\t\t//打开编辑窗口\r\n");
      out.write("  \t\t\t$(\"#addBtn\").click(function(){\r\n");
      out.write("  \t\t\t\t//清空表单数据\r\n");
      out.write("  \t\t\t\t$(\"#editForm\").form(\"clear\");\r\n");
      out.write("  \t\t\t\t$(\"#win\").window(\"open\");\r\n");
      out.write("  \t\t\t});\r\n");
      out.write("  \t\t\t\r\n");
      out.write("  \t\t\t//保存数据\r\n");
      out.write("  \t\t\t$(\"#saveBtn\").click(function(){\r\n");
      out.write("  \t\t\t\t$(\"#editForm\").form(\"submit\",{\r\n");
      out.write("  \t\t\t\t\t//url: 提交到后台的地址\r\n");
      out.write("  \t\t\t\t\turl:\"customer/save.action\",\r\n");
      out.write("  \t\t\t\t\t//onSubmit: 表单提交前的回调函数，true：提交表单   false：不提交表单\r\n");
      out.write("  \t\t\t\t\tonSubmit:function(){\r\n");
      out.write("  \t\t\t\t\t\t//判断表单的验证是否都通过了\r\n");
      out.write("  \t\t\t\t\t\treturn $(\"#editForm\").form(\"validate\");\r\n");
      out.write("  \t\t\t\t\t},\r\n");
      out.write("  \t\t\t\t\t//success:服务器执行完毕回调函数\r\n");
      out.write("  \t\t\t\t\tsuccess:function(data){ //data: 服务器返回的数据，类型字符串类\r\n");
      out.write("  \t\t\t\t\t\t//要求Controller返回的数据格式：  \r\n");
      out.write("  \t\t\t\t\t\t//成功：{success:true} 失败:{success:false,msg:错误信息}\r\n");
      out.write("  \t\t\t\t\t\t\r\n");
      out.write("  \t\t\t\t\t\t//把data字符串类型转换对象类型\r\n");
      out.write("  \t\t\t\t\t\tdata = eval(\"(\"+data+\")\");\r\n");
      out.write("  \t\t\t\t\t\t\r\n");
      out.write("  \t\t\t\t\t\tif(data.success){\r\n");
      out.write("  \t\t\t\t\t\t\t//关闭窗口\r\n");
      out.write("  \t\t\t\t\t\t\t$(\"#win\").window(\"close\");\r\n");
      out.write("  \t\t\t\t\t\t\t//刷新datagrid\r\n");
      out.write("  \t\t\t\t\t\t\t$(\"#list\").datagrid(\"reload\");\r\n");
      out.write("  \t\t\t\t\t\t\t\r\n");
      out.write("  \t\t\t\t\t\t\t$.messager.alert(\"提示\",\"保存成功\",\"info\");\r\n");
      out.write("  \t\t\t\t\t\t}else{\r\n");
      out.write("  \t\t\t\t\t\t\t$.messager.alert(\"提示\",\"保存失败：\"+data.msg,\"error\");\r\n");
      out.write("  \t\t\t\t\t\t}\r\n");
      out.write("   \t\t\t\t\t}\r\n");
      out.write("  \t\t\t\t});\r\n");
      out.write("  \t\t\t\t\r\n");
      out.write("  \t\t\t});\r\n");
      out.write("  \t\t\t\r\n");
      out.write("  \t\t\t//修改数据\r\n");
      out.write("  \t\t\t$(\"#editBtn\").click(function(){\r\n");
      out.write("  \t\t\t\t//判断只能选择一行\r\n");
      out.write("  \t\t\t\tvar rows = $(\"#list\").datagrid(\"getSelections\");\r\n");
      out.write("  \t\t\t\tif(rows.length!=1){\r\n");
      out.write("  \t\t\t\t\t$.messager.alert(\"提示\",\"修改操作只能选择一行\",\"warning\");\r\n");
      out.write("  \t\t\t\t\treturn;\r\n");
      out.write("  \t\t\t\t}\r\n");
      out.write("  \t\t\t\t\r\n");
      out.write("  \t\t\t\t//表单回显\r\n");
      out.write("  \t\t\t\t$(\"#editForm\").form(\"load\",\"customer/findById.action?id=\"+rows[0].id);\r\n");
      out.write("  \t\t\t\t\r\n");
      out.write("  \t\t\t\t$(\"#win\").window(\"open\");\r\n");
      out.write("  \t\t\t});\r\n");
      out.write("  \t\t\t\r\n");
      out.write("  \t\t\t//删除\r\n");
      out.write("  \t\t\t$(\"#deleteBtn\").click(function(){\r\n");
      out.write("  \t\t\t\tvar rows =$(\"#list\").datagrid(\"getSelections\");\r\n");
      out.write("  \t\t\t\tif(rows.length==0){\r\n");
      out.write("  \t\t\t\t\t$.messager.alert(\"提示\",\"删除操作至少选择一行\",\"warning\");\r\n");
      out.write("  \t\t\t\t\treturn;\r\n");
      out.write("  \t\t\t\t}\r\n");
      out.write("  \t\t\t\t\r\n");
      out.write("  \t\t\t\t//格式： id=1&id=2&id=3\r\n");
      out.write("  \t\t\t\t$.messager.confirm(\"提示\",\"确认删除数据吗?\",function(value){\r\n");
      out.write("  \t\t\t\t\tif(value){\r\n");
      out.write("  \t\t\t\t\t\tvar idStr = \"\";\r\n");
      out.write("  \t\t\t\t\t\t//遍历数据\r\n");
      out.write("  \t\t\t\t\t\t$(rows).each(function(i){\r\n");
      out.write("  \t\t\t\t\t\t\tidStr+=(\"id=\"+rows[i].id+\"&\");\r\n");
      out.write("  \t\t\t\t\t\t});\r\n");
      out.write("  \t\t\t\t\t\tidStr = idStr.substring(0,idStr.length-1);\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("  \t\t\t\t\t\t//传递到后台\r\n");
      out.write("  \t\t\t\t\t\t$.post(\"customer/delete.action\",idStr,function(data){\r\n");
      out.write("  \t\t\t\t\t\t\tif(data.success){\r\n");
      out.write("  \t  \t\t\t\t\t\t\t//刷新datagrid\r\n");
      out.write("  \t  \t\t\t\t\t\t\t$(\"#list\").datagrid(\"reload\");\r\n");
      out.write("  \t  \t\t\t\t\t\t\t\r\n");
      out.write("  \t  \t\t\t\t\t\t\t$.messager.alert(\"提示\",\"删除成功\",\"info\");\r\n");
      out.write("  \t  \t\t\t\t\t\t}else{\r\n");
      out.write("  \t  \t\t\t\t\t\t\t$.messager.alert(\"提示\",\"删除失败：\"+data.msg,\"error\");\r\n");
      out.write("  \t  \t\t\t\t\t\t}\r\n");
      out.write("  \t\t\t\t\t\t},\"json\");\r\n");
      out.write("  \t\t\t\t\t}\r\n");
      out.write("  \t\t\t\t});\r\n");
      out.write("  \t\t\t});\r\n");
      out.write("  \t\t});\r\n");
      out.write("  \t\r\n");
      out.write("  \t</script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.56
 * Generated at: 2020-02-16 10:03:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class regist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>用户注册</title>   \r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
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
      out.write("\t\r\n");
      out.write("\t<script type=\"text/javascript\"> \r\n");
      out.write("         function check() { \r\n");
      out.write("             var username = $(\"#username\").val(); \r\n");
      out.write("             var password = $(\"#password\").val();\r\n");
      out.write("             if (username == null || username == \"\") { \r\n");
      out.write("                 alert(\"用户名不能为空！\"); \r\n");
      out.write("                 return; \r\n");
      out.write("             } \r\n");
      out.write("             if (password == null || password == \"\") { \r\n");
      out.write("                 alert(\"密码不能为空！\"); \r\n");
      out.write("                 return; \r\n");
      out.write("             }\r\n");
      out.write("             var password2 = $(\"#password2\").val();\r\n");
      out.write("             if (password2!=password) { \r\n");
      out.write("                 alert(\"密码不一致！\"); \r\n");
      out.write("                 return; \r\n");
      out.write("             }          \r\n");
      out.write("            $(\"#reForm\").submit(); \r\n");
      out.write("         } \r\n");
      out.write("    </script> \r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("    <div id=\"w\" class=\"easyui-window\" title=\"请先注册\" data-options=\"modal:true,iconCls:'Lockgo',closable:false,minimizable:false\" style=\"width:400px;padding:20px 70px 20px 70px;\">\r\n");
      out.write("        <form id=\"reForm\" method=\"post\" action=\"login.jsp\" >\r\n");
      out.write("\t        <div style=\"margin-bottom:10px\">\r\n");
      out.write("\t            <input class=\"easyui-textbox\" id=\"username\" name=\"username\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${username}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" type=\"text\" style=\"width:100%;height:30px;padding:12px\" data-options=\"prompt:'注册账号',iconCls:'icon-man',iconWidth:38\">\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t        <div style=\"margin-bottom:10px\">\r\n");
      out.write("\t            <input class=\"easyui-textbox\" id=\"password\" name=\"password\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${password}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" type=\"password\" style=\"width:100%;height:30px;padding:12px\" data-options=\"prompt:'注册密码',iconCls:'icon-lock',iconWidth:38\">\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t        <div style=\"margin-bottom:20px\">\r\n");
      out.write("\t            <input class=\"easyui-textbox\" id=\"password2\" name=\"password2\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${password2}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" type=\"password\" style=\"width:100%;height:30px;padding:12px\" data-options=\"prompt:'确认密码',iconCls:'icon-lock',iconWidth:38\">\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t        <div>\r\n");
      out.write("\t            <a id=\"reBtn\" href=\"#\" onclick=\"check()\" class=\"easyui-linkbutton\" data-options=\"iconCls:'icon-ok'\" style=\"padding:5px 0px;width:100%;\">\r\n");
      out.write("\t                <span style=\"font-size:14px;\">注册</span>\r\n");
      out.write("\t            </a>\r\n");
      out.write("\t        </div>\r\n");
      out.write("        </form>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("    \t$(function(){\r\n");
      out.write("    \t\t$(\"#reBtn\").click(function(){\r\n");
      out.write("  \t\t\t\t$(\"#reForm\").form(\"submit\",{\r\n");
      out.write("  \t\t\t\t\t//url: 提交到后台的地址\r\n");
      out.write("  \t\t\t\t\turl:\"customer/regist.action\",\r\n");
      out.write("  \t\t\t\t\t//onSubmit: 表单提交前的回调函数，true：提交表单   false：不提交表单\r\n");
      out.write("  \t\t\t\t\tonSubmit:function(){\r\n");
      out.write("  \t\t\t\t\t},\r\n");
      out.write("  \t\t\t\t\t//success:服务器执行完毕回调函数\r\n");
      out.write("  \t\t\t\t\tsuccess:function(data){ //data: 服务器返回的数据，类型字符串类\r\n");
      out.write("  \t\t\t\t\t\t//要求Controller返回的数据格式：  \r\n");
      out.write("  \t\t\t\t\t\t//成功：{success:true} 失败:{success:false,msg:错误信息}\r\n");
      out.write("  \t\t\t\t\t\t\r\n");
      out.write("  \t\t\t\t\t\t//把data字符串类型转换对象类型\r\n");
      out.write("   \t\t\t\t\t}\r\n");
      out.write("  \t\t\t\t});\r\n");
      out.write("  \t\t\t\t\r\n");
      out.write("  \t\t\t});\r\n");
      out.write("    \t});\r\n");
      out.write("    </script>\r\n");
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

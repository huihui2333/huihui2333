/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.56
 * Generated at: 2020-02-07 08:01:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>神码学堂客户关系管理系统</title>\r\n");
      out.write("    \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"easyui/jquery.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"easyui/jquery.easyui.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"easyui/locale/easyui-lang-zh_CN.js\"></script>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"easyui/themes/icon.css\">\r\n");
      out.write("\t<link id=\"themeLink\" rel=\"stylesheet\" type=\"text/css\" href=\"easyui/themes/default/easyui.css\">\r\n");
      out.write("\r\n");
      out.write("\t<style type=\"text/css\">\r\n");
      out.write("\t\tul{\r\n");
      out.write("\t\t\tline-height: 30px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</style>\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body class=\"easyui-layout\"> \r\n");
      out.write("  \t <!-- 顶部 --> \r\n");
      out.write("    <div data-options=\"region:'north',split:true\" style=\"height:80px;\">\r\n");
      out.write("    \t\r\n");
      out.write("    \t<!-- logo -->\r\n");
      out.write("    \t<div id=\"logo\">\r\n");
      out.write("    \t\t<img src=\"images/logo.png\"/>\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t\r\n");
      out.write("    \t<!-- 登录用户信息 -->\r\n");
      out.write("    \t<div id=\"loginDiv\" style=\"position: absolute;right: 20px;top: 20px;\">\r\n");
      out.write("    \t\t 欢迎你，[超级管理员],你使用[192.156.21.22]IP登录!\r\n");
      out.write("    \t</div>\r\n");
      out.write("    \t\r\n");
      out.write("    \t<div id=\"themesDiv\" style=\"position: absolute;right: 20px;top:40px;\">\r\n");
      out.write("\t    \t<a href=\"javascript:void(0)\" id=\"mb\" class=\"easyui-menubutton\"     \r\n");
      out.write("\t\t\t        data-options=\"menu:'#Themesmeus',iconCls:'icon-edit'\">切换风格</a>   \r\n");
      out.write("\t\t\t<div id=\"Themesmeus\" style=\"width:150px;\">   \r\n");
      out.write("\t\t\t    <div>default</div>   \r\n");
      out.write("\t\t\t    <div>gray</div>   \r\n");
      out.write("\t\t\t    <div>black</div>   \r\n");
      out.write("\t\t\t    <div>bootstrap</div>   \r\n");
      out.write("\t\t\t    <div>material</div>   \r\n");
      out.write("\t\t\t    <div>metro</div>   \r\n");
      out.write("\t\t\t</div>  \r\n");
      out.write("\t\t</div>\t\t\r\n");
      out.write("    </div>   \r\n");
      out.write("    \r\n");
      out.write("    <!-- 底部 -->\r\n");
      out.write("    <div data-options=\"region:'south',split:true\" style=\"height:30px;\">\r\n");
      out.write("    \t<div id=\"copyrightDiv\" style=\"text-align: center;\">\r\n");
      out.write("    \t\t神码学堂&copy;2018版权所有\r\n");
      out.write("    \t</div>\r\n");
      out.write("    </div>   \r\n");
      out.write("    \r\n");
      out.write("     <!-- 左边系统菜单 -->\r\n");
      out.write("    <div data-options=\"region:'west',title:'系统菜单',split:true\" style=\"width:200px;\">\r\n");
      out.write("    \t<div id=\"aa\" class=\"easyui-accordion\" style=\"width:193px;\" data-options=\"border:0,multiple:true\" >   \r\n");
      out.write("\t\t    <div title=\"系统管理\" data-options=\"iconCls:'icon-save'\" style=\"overflow:auto;padding:10px;\">   \r\n");
      out.write("\t\t       <ul>\r\n");
      out.write("\t\t       \t <li><a href=\"javascript:void(0)\" pageUrl=\"categroy.jsp\">员工管理</a></li>\r\n");
      out.write("\t\t       </ul>\r\n");
      out.write("\t\t    </div>   \r\n");
      out.write("\t\t    <div title=\"商品管理\" data-options=\"iconCls:'icon-reload',selected:true\" style=\"padding:10px;\">   \r\n");
      out.write("\t\t       <ul>\r\n");
      out.write("\t\t       \t <li><a href=\"javascript:void(0)\" pageUrl=\"customer_manage.jsp\">客户管理</a></li>\r\n");
      out.write("\t\t       \t <li><a href=\"javascript:void(0)\" pageUrl=\"jobTest.jsp\">联系人管理管理</a></li>\r\n");
      out.write("\t\t       </ul>\r\n");
      out.write("\t\t    </div>     \r\n");
      out.write("\t\t</div>  \r\n");
      out.write("    </div>   \r\n");
      out.write("    \r\n");
      out.write("    <!-- 中间编辑区域 -->\r\n");
      out.write("    <div data-options=\"region:'center'\" style=\"padding:5px;background:#eee;\">\r\n");
      out.write("    \t<div id=\"tt\" class=\"easyui-tabs\" style=\"width:500px;height:250px;\" data-options=\"fit:true\">   \r\n");
      out.write("\t\t    <div title=\"起始页\" style=\"padding:20px;display:none;\">   \r\n");
      out.write("\t\t       欢迎登录神码学堂客户关系管理系统    \r\n");
      out.write("\t\t    </div>     \r\n");
      out.write("\t\t</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("    \t$(function(){\r\n");
      out.write("    \t\t//给a标签绑定时间\r\n");
      out.write("    \t\t$(\"a[pageUrl]\").click(function(){\r\n");
      out.write("    \t\t\t//1.获取pageUrl属性值（需要跳转的页面地址）\r\n");
      out.write("    \t\t\tvar pageUrl = $(this).attr(\"pageUrl\");\r\n");
      out.write("    \t\t\t//获取a标签的内容，标题\r\n");
      out.write("    \t\t\tvar title = $(this).text();\r\n");
      out.write("\r\n");
      out.write("    \t\t\t//2.判断是否存在指定标题的选项卡\r\n");
      out.write("    \t\t\tif( $(\"#tt\").tabs(\"exists\",title)  )  {\r\n");
      out.write("\t    \t\t\t//3.如果存在，则选项该选项卡\r\n");
      out.write("    \t\t\t\t$(\"#tt\").tabs(\"select\",title);\t\t\t\t\r\n");
      out.write("    \t\t\t}else{\r\n");
      out.write("\t    \t\t\t//4.如果不存在，则添加选项卡\r\n");
      out.write("    \t\t\t\t$(\"#tt\").tabs(\"add\",{\r\n");
      out.write("    \t\t\t\t\ttitle:title,\r\n");
      out.write("    \t\t\t\t\tcontent:\"<iframe src='\"+pageUrl+\"' width='100%' height='100%' frameborder='0'><iframe>\",\r\n");
      out.write("    \t\t\t\t\tclosable:true\r\n");
      out.write("    \t\t\t\t});\t\t\t\t\r\n");
      out.write("    \t\t\t}\r\n");
      out.write("    \t\t});\r\n");
      out.write("    \t\t\r\n");
      out.write("    \t\t//点击切换模块菜单的时候，进行切换模块\r\n");
      out.write("    \t\t$(\"#Themesmeus\").menu({\r\n");
      out.write("    \t\t\tonClick:function(item){\r\n");
      out.write("    \t\t\t\t//1.获取需要改变的模块名称\r\n");
      out.write("    \t\t\t\tvar themeName = item.text;\r\n");
      out.write("    \t\t\t\t\r\n");
      out.write("    \t\t\t\t//2.获取link标签的href属性\r\n");
      out.write("    \t\t\t\tvar href= $(\"#themeLink\").attr(\"href\");\r\n");
      out.write("    \t\t\t\t\r\n");
      out.write("    \t\t\t\t//3.更改href的属性值\r\n");
      out.write("    \t\t\t\t// easyui/themes/default/easyui.css\r\n");
      out.write("    \t\t\t\thref = href.substring(0,href.indexOf(\"themes\"))+\"themes/\"+themeName+\"/easyui.css\";\r\n");
      out.write("    \t\t\t\t\r\n");
      out.write("    \t\t\t\t//4.更新link的href属性\r\n");
      out.write("    \t\t\t\t$(\"#themeLink\").attr(\"href\",href);\r\n");
      out.write("    \t\t\t}\r\n");
      out.write("    \t\t});\r\n");
      out.write("    \t});\r\n");
      out.write("    \r\n");
      out.write("    </script>  \r\n");
      out.write("  </body>  \r\n");
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

/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.56
 * Generated at: 2020-02-23 13:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class enterprise_005fcomment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    Date date = new Date();
    String nowDate = sdf.format(date);

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
      out.write("\t\t <div id=\"win\">\r\n");
      out.write("\t        <!-- 留言的表单 -->\r\n");
      out.write("\t        <form id=\"wordsForm\" method=\"post\">\r\n");
      out.write("\t            <input name=\"lw_name\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${currentUser.username}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" type=\"hidden\" style=\"width:150px\"/>\r\n");
      out.write("\t            <input name=\"lw_date\" value=\"");
      out.print(nowDate);
      out.write("\" type=\"hidden\" style=\"width:150px\"/>\r\n");
      out.write("\t            <input name=\"lw_for_article_id\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${job.job_id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" type=\"hidden\" style=\"width:150px\"/>\r\n");
      out.write("\t            <div style=\"margin-left: 0;\">\r\n");
      out.write("\t            \t<input id=\"lw_content\" type=\"text\" name=\"lw_content\" class=\"easyui-textbox\"\r\n");
      out.write("\t\t\t\t\tdata-options=\"prompt:'请输入你的留言',required:false,multiline:true\"\r\n");
      out.write("\t\t\t\t\tstyle=\"width:300px;height:100px\" />\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t            <br/>\r\n");
      out.write("\t            <div style=\"text-align: left;margin-left: 0;\">\r\n");
      out.write("\t            \t<a id=\"wordsBtn\" href=\"#\" class=\"easyui-linkbutton\" data-options=\"\">留言</a>\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t        </form>\r\n");
      out.write("\t        <br/>\r\n");
      out.write("\t        <!-- 留言信息列表展示 -->\r\n");
      out.write("\t        <div>\r\n");
      out.write("\t            <ul>\r\n");
      out.write("\t                <!-- 先遍历留言信息（一条留言信息，下面的全是回复信息） -->\r\n");
      out.write("\t                ");
      //  c:forEach
      org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /enterprise_comment.jsp(55,17) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/enterprise_comment.jsp(55,17) '${requestScope.lw_list}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${requestScope.lw_list}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /enterprise_comment.jsp(55,17) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("words");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t                    <!-- 如果留言信息是在本文章下的才显示 -->\r\n");
            out.write("\t                    ");
            //  c:if
            org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
            _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
            _jspx_th_c_005fif_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fforEach_005f0);
            // /enterprise_comment.jsp(57,21) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
            _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${words.lw_for_article_id eq job.job_id}", java.lang.Boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false)).booleanValue());
            int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
            if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
              do {
                out.write("\r\n");
                out.write("\t                        <li style=\"border-top: 1px dotted #01AAED\">\r\n");
                out.write("\t                            <br/>\r\n");
                out.write("\t                            <div style=\"text-align: left;color:#444\">\r\n");
                out.write("\t                                <div>\r\n");
                out.write("\t                                    <span style=\"color:#01AAED\">");
                out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${words.lw_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                out.write("</span>\r\n");
                out.write("\t                                </div>\r\n");
                out.write("\t                                <div>");
                out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${words.lw_content}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                out.write("</div>\r\n");
                out.write("\t                            </div>\r\n");
                out.write("\t                            <div>\r\n");
                out.write("\t                                <div class=\"comment-parent\" style=\"text-align:left;margin-top:7px;color:#444\">\r\n");
                out.write("\t                                    <span>");
                out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${words.lw_date}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                out.write("</span>\r\n");
                out.write("\t                                    &nbsp;&nbsp;&nbsp;&nbsp;\r\n");
                out.write("\t                                    <p>\r\n");
                out.write("\t                                        <a href=\"javascript:;\" onclick=\"btnReplyClick(this)\">回复</a>\r\n");
                out.write("\t                                    </p>\r\n");
                out.write("\t                                    <hr style=\"margin-top: 7px;\"/>\r\n");
                out.write("\t                                </div>\r\n");
                out.write("\t                                <!-- 回复表单默认隐藏 -->\r\n");
                out.write("\t                                <div id=\"replyContainer\" style=\"margin-left: 61px;\">\r\n");
                out.write("\t                                    <form id=\"replyForm\" method=\"post\">\r\n");
                out.write("\t                                        <input name=\"lr_for_article_id\" id=\"lr_for_article_id\" value=\"");
                out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${job.job_id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                out.write("\" type=\"hidden\"/>\r\n");
                out.write("\t                                        <input name=\"lr_name\" id=\"lr_name\" value=\"");
                out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${currentUser.username}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                out.write("\" type=\"hidden\"/>\r\n");
                out.write("\t                                        <input name=\"lr_date\" id=\"lr_date\" value=\"");
                out.print(nowDate);
                out.write("\" type=\"text\" type=\"hidden\"/>\r\n");
                out.write("\t                                        <input name=\"lr_for_name\" id=\"lr_for_name\" value=\"");
                out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${words.lw_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                out.write("\" type=\"hidden\"/>\r\n");
                out.write("\t                                        <input name=\"lr_for_words\" id=\"lr_for_words\" value=\"");
                out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${words.lw_id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                out.write("\" type=\"hidden\"/>\r\n");
                out.write("\t                                        <input name=\"lr_for_reply\" id=\"lr_for_reply\" value=\"");
                out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${reply.lr_id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                out.write("\" type=\"hidden\"/>\r\n");
                out.write("\t                                        <div>\r\n");
                out.write("\t                                        \t<input id=\"lr_content\" type=\"text\" name=\"lr_content\" class=\"easyui-textbox\"\r\n");
                out.write("\t\t\t\t\t\t\t\t\t\t\t\tdata-options=\"prompt:'请输入回复内容',required:true,multiline:true\"\r\n");
                out.write("\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width:200px;height:100px\" />\r\n");
                out.write("\t                                        </div>\r\n");
                out.write("\t                                        <div>\r\n");
                out.write("\t                                        \t<a id=\"replyBtn\" href=\"#\" class=\"easyui-linkbutton\" data-options=\"\">提交</a>\r\n");
                out.write("\t                                        </div>\r\n");
                out.write("\t                                    </form>\r\n");
                out.write("\t                                </div>\r\n");
                out.write("\t                            </div>\r\n");
                out.write("\t\r\n");
                out.write("\t                            <!-- 以下是回复信息 -->\r\n");
                out.write("\t                            ");
                //  c:forEach
                org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
                _jspx_th_c_005fforEach_005f1.setPageContext(_jspx_page_context);
                _jspx_th_c_005fforEach_005f1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f0);
                // /enterprise_comment.jsp(97,29) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
                _jspx_th_c_005fforEach_005f1.setItems(new org.apache.jasper.el.JspValueExpression("/enterprise_comment.jsp(97,29) '${requestScope.lr_list}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${requestScope.lr_list}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
                // /enterprise_comment.jsp(97,29) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
                _jspx_th_c_005fforEach_005f1.setVar("reply");
                int[] _jspx_push_body_count_c_005fforEach_005f1 = new int[] { 0 };
                try {
                  int _jspx_eval_c_005fforEach_005f1 = _jspx_th_c_005fforEach_005f1.doStartTag();
                  if (_jspx_eval_c_005fforEach_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                    do {
                      out.write("\r\n");
                      out.write("\t                                <!-- 每次遍历出来的留言下存在回复信息才展示（本条回复信息是本条留言下的就显示在当前留言下） -->\r\n");
                      out.write("\t                                ");
                      //  c:if
                      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
                      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
                      _jspx_th_c_005fif_005f1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fforEach_005f1);
                      // /enterprise_comment.jsp(99,33) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
                      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${reply.lr_for_article_id eq job.job_id && reply.lr_for_words eq words.lw_id}", java.lang.Boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false)).booleanValue());
                      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
                      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                        do {
                          out.write("\r\n");
                          out.write("\t                                    <div style=\"text-align: left;margin-left:61px;color: #444\">\r\n");
                          out.write("\t                                        <div>\r\n");
                          out.write("\t                                            <span style=\"color:#5FB878\">");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${reply.lr_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                          out.write("&nbsp;&nbsp;</span>\r\n");
                          out.write("\t                                        </div>\r\n");
                          out.write("\t                                        <div>@");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${reply.lr_for_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                          out.write(":&nbsp;&nbsp; ");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${reply.lr_content}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                          out.write("</div>\r\n");
                          out.write("\t                                    </div>\r\n");
                          out.write("\t                                    <div>\r\n");
                          out.write("\t                                        <div class=\"comment-parent\" style=\"text-align:left;margin-top:7px;margin-left:61px;color:#444\">\r\n");
                          out.write("\t                                            <span>");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${reply.lr_date}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                          out.write("</span>\r\n");
                          out.write("\t                                            &nbsp;&nbsp;&nbsp;&nbsp;\r\n");
                          out.write("\t                                            <p>\r\n");
                          out.write("\t                                                <a href=\"javascript:;\" onclick=\"btnReplyClick(this)\">回复</a>\r\n");
                          out.write("\t                                            </p>\r\n");
                          out.write("\t                                            <hr style=\"margin-top: 7px;\"/>\r\n");
                          out.write("\t                                        </div>\r\n");
                          out.write("\t                                        <!-- 回复表单默认隐藏 -->\r\n");
                          out.write("\t                                        <div id=\"replyContainer2\" style=\"margin-left: 61px;\">\r\n");
                          out.write("\t                                            <form id=\"replyForm2\" method=\"post\">\r\n");
                          out.write("\t                                                <input name=\"lr_for_article_id\" id=\"lr_for_article_id\" value=\"");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${job.job_id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                          out.write("\" type=\"hidden\"/>\r\n");
                          out.write("\t                                                <input name=\"lr_name\" id=\"lr_name\" value=\"");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${currentUser.username}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                          out.write("\" type=\"hidden\"/>\r\n");
                          out.write("\t                                                <input name=\"lr_date\" id=\"lr_date\" value=\"");
                          out.print(nowDate);
                          out.write("\" type=\"hidden\"/>\r\n");
                          out.write("\t                                                <input name=\"lr_for_name\" id=\"lr_for_name\" value=\"");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${words.lw_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                          out.write("\" type=\"hidden\"/>\r\n");
                          out.write("\t                                                <input name=\"lr_for_words\" id=\"lr_for_words\" value=\"");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${words.lw_id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                          out.write("\" type=\"hidden\"/>\r\n");
                          out.write("\t                                                <input name=\"lr_for_reply\" id=\"lr_for_reply\" value=\"");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${reply.lr_id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                          out.write("\" type=\"hidden\"/>\r\n");
                          out.write("\t                                                <div>\r\n");
                          out.write("\t                                                \t<input id=\"lr_content\" type=\"text\" name=\"lr_content\" class=\"easyui-textbox\"\r\n");
                          out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\tdata-options=\"prompt:'请输入回复内容',required:true,multiline:true\"\r\n");
                          out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width:200px;height:100px\" />\r\n");
                          out.write("\t                                                      @");
                          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${words.lw_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
                          out.write(":&nbsp;&nbsp;\r\n");
                          out.write("\t                                                </div>\r\n");
                          out.write("\t                                                <div>\r\n");
                          out.write("\t                                                \t<a id=\"replyBtn\" href=\"#\" class=\"easyui-linkbutton\" data-options=\"\">提交</a>\r\n");
                          out.write("\t                                                </div>\r\n");
                          out.write("\t                                            </form>\r\n");
                          out.write("\t                                        </div>\r\n");
                          out.write("\t                                    </div>\r\n");
                          out.write("\t                                ");
                          int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
                          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                            break;
                        } while (true);
                      }
                      if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                        _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
                        return;
                      }
                      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
                      out.write("\r\n");
                      out.write("\t                            ");
                      int evalDoAfterBody = _jspx_th_c_005fforEach_005f1.doAfterBody();
                      if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                        break;
                    } while (true);
                  }
                  if (_jspx_th_c_005fforEach_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                    return;
                  }
                } catch (java.lang.Throwable _jspx_exception) {
                  while (_jspx_push_body_count_c_005fforEach_005f1[0]-- > 0)
                    out = _jspx_page_context.popBody();
                  _jspx_th_c_005fforEach_005f1.doCatch(_jspx_exception);
                } finally {
                  _jspx_th_c_005fforEach_005f1.doFinally();
                  _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f1);
                }
                out.write("\r\n");
                out.write("\t                        </li>\r\n");
                out.write("\t                    ");
                int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
                if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                  break;
              } while (true);
            }
            if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
              _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
              return;
            }
            _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
            out.write("\r\n");
            out.write("\t                ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
        _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      }
      out.write("\r\n");
      out.write("\t            </ul>\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t    <br/>\r\n");
      out.write("\t    <br/>\r\n");
      out.write("\t    <br/>\r\n");
      out.write("\t    <br/>\r\n");
      out.write("\t    <br/>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tfunction btnReplyClick(elem) {\r\n");
      out.write("\t        var $ = easyui.jquery;\r\n");
      out.write("\t        if($(this)){\r\n");
      out.write("\t        }else if(!$(this)){\r\n");
      out.write("\t            $(elem).parent('p').parent('.comment-parent').siblings('.replycontainer').toggleClass('easyui-show');\r\n");
      out.write("\t        }\r\n");
      out.write("\t        $(elem).parent('p').parent('.comment-parent').siblings('.replycontainer').toggleClass('easyui-hide');\r\n");
      out.write("\t        if ($(elem).text() == '回复') {\r\n");
      out.write("\t            $(elem).text('收起')\r\n");
      out.write("\t        } else {\r\n");
      out.write("\t            $(elem).text('回复')\r\n");
      out.write("\t        }\r\n");
      out.write("\t    }\r\n");
      out.write("\t\r\n");
      out.write("\t\t$(\"#wordsBtn\").click(function(){\r\n");
      out.write("\t\t\t$(\"#wordsForm\").form(\"submit\",{\r\n");
      out.write("\t\t\t\t//url: 提交到后台的地址\r\n");
      out.write("\t\t\t\turl:\"customer/saveWords.action\",\r\n");
      out.write("\t\t\t\t//onSubmit: 表单提交前的回调函数，true：提交表单   false：不提交表单\r\n");
      out.write("\t\t\t\tonSubmit:function(){\r\n");
      out.write("\t\t\t\t\t//判断表单的验证是否都通过了\r\n");
      out.write("\t\t\t\t\treturn $(\"#wordsForm\").form(\"validate\");\r\n");
      out.write("\t\t\t\t},\r\n");
      out.write("\t\t\t\t//success:服务器执行完毕回调函数\r\n");
      out.write("\t\t\t\tsuccess:function(data){ //data: 服务器返回的数据，类型字符串类\r\n");
      out.write("\t\t\t\t\t//要求Controller返回的数据格式：  \r\n");
      out.write("\t\t\t\t\t//成功：{success:true} 失败:{success:false,msg:错误信息}\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t//把data字符串类型转换对象类型\r\n");
      out.write("\t\t\t\t\tdata = eval(\"(\"+data+\")\");\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\tif(data.success){\r\n");
      out.write("\t\t\t\t\t\t$.messager.alert(\"提示\",\"保存成功\",\"info\");\r\n");
      out.write("\t\t\t\t\t}else{\r\n");
      out.write("\t\t\t\t\t\t$.messager.alert(\"提示\",\"保存失败：\"+data.msg,\"error\");\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("  \t\t\t\r\n");
      out.write("\t    $(\"#replyBtn\").click(function(){\r\n");
      out.write("\t        var lr_for_article_id = $(\"#lr_for_article_id\").val();\r\n");
      out.write("\t        var lr_name = $(\"#lr_name\").val();\r\n");
      out.write("\t        var lr_date = $(\"#lr_date\").val();\r\n");
      out.write("\t        var lr_for_name = $(\"#lr_for_name\").val();\r\n");
      out.write("\t        var lr_content = $(\"#lr_content\").val();\r\n");
      out.write("\t        var lr_for_words = $(\"#lr_for_words\").val();\r\n");
      out.write("\t        $.ajax({\r\n");
      out.write("\t            url: \"customer/saveReply.action\",\r\n");
      out.write("\t            type: \"POST\",\r\n");
      out.write("\t            data: [{\r\n");
      out.write("\t                lr_for_article_id: lr_for_article_id,\r\n");
      out.write("\t                lr_name: lr_name,\r\n");
      out.write("\t                lr_date: lr_date,\r\n");
      out.write("\t                lr_for_name: lr_for_name,\r\n");
      out.write("\t                lr_content: lr_content,\r\n");
      out.write("\t                lr_for_words: lr_for_words\r\n");
      out.write("\t            }],\r\n");
      out.write("\t            success: function(data){\r\n");
      out.write("\t               $.messager.alert(\"提示\",\"保存成功\",\"info\");\r\n");
      out.write("\t            },\r\n");
      out.write("\t            error: function(){\r\n");
      out.write("\t            \t$.messager.alert(\"提示\",\"出现未知错误\",\"error\");\r\n");
      out.write("\t            }\r\n");
      out.write("\t        });\r\n");
      out.write("\t    });\r\n");
      out.write("\t</script>\r\n");
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

/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.36
 * Generated at: 2018-09-05 01:10:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.xml;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class exam02_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1535589035706L));
    _jspx_dependants.put("jar:file:/F:/java_web_4/jquery/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ajaxExample/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title></title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/reset.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/common.css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(function() {\r\n");
      out.write("\t\t$(\"#mybtn\").click(function() {\r\n");
      out.write("\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\turl: \"ajax/xml/xml04.xml\",\r\n");
      out.write("\t\t\t\ttype: \"get\",\r\n");
      out.write("\t\t\t\tdataType: \"xml\",\r\n");
      out.write("\t\t\t\tcache: false,\r\n");
      out.write("\t\t\t\ttimeout: 30000,\r\n");
      out.write("\t\t\t\tsuccess: function(xml) {\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t$(xml).find(\"subject\").each(function() {\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\tvar title = $(this).find(\"title\").text();\r\n");
      out.write("\t\t\t\t\t\tvar time = $(this).find(\"time\").text();\r\n");
      out.write("\t\t\t\t\t\tvar teacher = $(this).find(\"teacher\").text();\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\tvar div = $(\"<div>\");\r\n");
      out.write("\t\t\t\t\t\tvar p1 = $(\"<p>\").html(title);\r\n");
      out.write("\t\t\t\t\t\tvar p2 = $(\"<p>\").html(time);\r\n");
      out.write("\t\t\t\t\t\tvar p3 = $(\"<p>\").html(teacher);\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\tdiv.append(p1).append(p2).append(p3);\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t$(\"#result\").append(div);\r\n");
      out.write("\t\t\t\t\t\t$(\"#result\").append(\"<hr/>\");\r\n");
      out.write("\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t},\r\n");
      out.write("\t\t\t\terror: function(xhr, textStatus, errorThrown) {\r\n");
      out.write("\t\t\t\t\t$(\"div\").html(\"<div>\" + textStatus\r\n");
      out.write("\t\t\t\t\t\t+ \" (HTTP-\" + xhr.status + \" / \"\r\n");
      out.write("\t\t\t\t\t\t+ errorThrown + \")</div>\"\r\n");
      out.write("\t\t\t\t\t);\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t});\r\n");
      out.write("\t});\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<h1 class=\"title\">$.ajax() 함수를 사용한 XML 데이터 읽기</h1>\r\n");
      out.write("\t<div class=\"exec\">\r\n");
      out.write("\t\t<input type=\"button\" id=\"mybtn\" value=\"xml데이터 가져오기\"/>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"console\" id=\"result\"></div>\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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

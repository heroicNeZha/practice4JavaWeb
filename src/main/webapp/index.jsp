<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择图书类型</title>
</head>
<body>
<p><a href="Header.do">请求头</a></p>
<p><a href="book/bookSelect.jsp">JSP图书测试</a></p>
<p><a href="WebProperty.do">属性和监听器</a></p>
<p><a href="<%=config.getServletContext().getInitParameter("MyBlog")%>">测试Context-param</a></p>
<p><a href="practice/testJSP.jsp">测试JSP</a></p>
<p><a href="practice/EL.jsp">EL实例</a></p>
<p><a href="jsonTest.do">JSON实例</a></p>
<p><a href="JSTLSupport.do">测试JSTL并提供支持</a></p>
<p><a href="practice/AjaxTest.jsp">测试Ajax并提供支持</a></p>
</body>
</html>

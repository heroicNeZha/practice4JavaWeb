<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/28
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>推荐书籍</title>
</head>
<body>
推荐的书籍:
<%
    List books = (List) request.getAttribute("books");
    Iterator iter = books.iterator();
    while (iter.hasNext()) {
%>
<br><%=iter.next()%>
<%;
}
%>
</body>
</html>

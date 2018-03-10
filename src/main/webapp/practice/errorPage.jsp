<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/17
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page isErrorPage="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>错误!</title>
</head>
<body>
出错啦!
<%--exception隐式对象只对错误页面可用(page命令),只在DD不行--%>
你引起的是 ${pageContext.exception} 错误
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/8
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择图书</title>
</head>
<body>
<%--action="/BookSelect.do"--%>
<form method="post">
    <label>请选择图书:</label>
    <select name="bookType">
        <option value="html">HTML</option>
        <option value="java">Java</option>
        <option value="linux">Linux</option>
    </select>
    <input type="submit" id ="submit1" value="提交">
</form>
</body>
</html>

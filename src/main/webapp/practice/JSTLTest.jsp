<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/27
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB2312" language="java" %>
<%@ page errorPage="errorPage.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>����JSTL</title>
    <style>
        .tabledate{
            border: 1px solid black;
            width: 100%;
            border-collapse: collapse;
        }
        .tddata{
            border: 1px solid black;
        }
        .divimport{
            border: 2px solid steelblue;
            width: 50%;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
<c:catch var="myException">
    <% int x=3/0; %>
</c:catch>
���ǲ����� ${myException} �쳣!
<br>
<c:url value="/practice/errorPage.jsp" var="errorURL" />
����ҳURLָ�� <a href="${errorURL}">url������</a>
<br>
<c:set target="${movieMap}" property="4" value="newMovie"/>
<table class="tabledate">
    <%--���顢Collection��Map���ö��ŷָ���String--%>
    <c:forEach var="movie" items="${movieMap}" varStatus="movieLoopCount">
        <tr class="tddata">
            <td class="tddata">count:${movieLoopCount.count}</td>
            <td class="tddata">${movie.value}</td>
        </tr>
    </c:forEach>
</table>

<div class="divimport">
<c:import url="http://game.qq.com/index.shtml" charEncoding="gb2312"/>
</div>
</body>
</html>

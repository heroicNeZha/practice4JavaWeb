<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/13
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="model.*" %>
<%--page session="false" 设置这个页面使得否要有隐式的会话对象 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errorPage.jsp" %>
<%--
可以覆盖jspInit()和jspDestroy()方法
不能覆盖_jspServices()方法
--%>
<html>
<head>
    <title>测试JSP</title>
</head>
<body>
<%
    int index = Counter.getCount();
    //隐式对象
    out.println("访问数:"+index);
    //通过ServletConfig调用上下文
    Dog explicitlyDog = (Dog)getServletConfig().getServletContext().getAttribute("dog");
    //上面也可以这么写
    Dog implicatlyDog = (Dog)application.getAttribute("dog");
    //给pageContext设置一个会话作用域的属性
    //等价于session.setAttribute("index",index);
    pageContext.setAttribute("index",index,PageContext.SESSION_SCOPE);
%>
<br>
<!--通过sevletConfig调用上下文属性-->
<%=explicitlyDog.getBlog()%>
<br>
<!--通过隐式application对象调用上下文属性-->
<%=implicatlyDog.getBlog()%>
<br>
<!--通过pageContext设置一个会话作用域属性-->
<%=session.getAttribute("index")%>
<br>
</body>
</html>

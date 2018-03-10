<%@ page import="model.Dog" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/18
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="func" uri="http://lhaojing.com" %>
<html>
<head>
    <title>EL表达式</title>
</head>
<body>
<%--在转换时插入Header.jsp的源代码--%>
<%@include file="Header.jsp"%>
<%--在运行时插入Header.jsp的响应--%>
<%--<jsp:include page="Header.jsp"/>--%>
<br>
<%--表达式第一个可以是隐式对象,也可以是一个属性--%>
获取Dog对象:${dog}
<%--相当于<%=application.getAttribute("dog")%>--%>
<br>
<%--使用type指定引用类型,class指定具体的实现类--%>
<%--只有type没有class,bean必须已经存在--%>
<jsp:useBean id="dog" type="model.Dog" class="model.Dog" scope="application">
    <%--使用usrBean体可以在找不到bean而且创建了一个bean时才设置属性--%>
    <jsp:setProperty name="dog" property="blog" value="${applicationScope.dog}" />
</jsp:useBean>
使用标准动作获取属性:<jsp:getProperty name="dog" property="blog"/>
<%--
    //相当于
    Dog dog = null;
    synchronized (application) {
        dog = (Dog) pageContext.getAttribute("dog", PageContext.APPLICATION_SCOPE);
        if (dog == null) {
            dog = new Dog();
            pageContext.setAttribute("blog", blog, PageContext.APPLICATION_SCOPE);
        }
        org.apache.jasper.runtime.JspRunTimeLibrary.introspecthelper(
                _jspx_page_context.findAttribute("blog"),"name","${applicationScope.dog}",null,null,false
        );
    }
--%>
<br>
<%--点号左边的变量必须是一个映射或者一个bean--%>
<%--点号右边必须是一个映射键或者一个bean性质--%>
<%--点号右边必须遵循Java有关标识符的命名规则--%>
使用表达式语言(EL)的.来获取属性:${dog.blog}
<br>
<%--相比之下[]更灵活--%>
<%--左值可以是Map、bean、List、或者是数组--%>
<%--右值如果是String直接量,可以是一个Map键、bean性质、也可以是索引--%>
使用表达式语言(EL)的[]来获取属性:${dog["blog"]}
<br>
<br>
<%--得到host首部--%>
Host is: ${header["host"]}
<br>
<%--获得HTTP方法不能用requestScope--%>
<%--没有request对象--%>
<%--注意requestScope是作用域属性的Map--%>
HTTP Method is: ${pageContext.request.method}
<br>
<%--获取上下文参数--%>
blog is: ${initParam.MyBlog}
<br>
${func:count()}
<br>
${4 eq 3}
<br>
${42 div 0}
<br>
<%--抛出异常--%>
<%--${7 % foo}--%>
</body>
</html>

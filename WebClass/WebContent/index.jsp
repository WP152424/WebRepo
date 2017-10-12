<%@ page import="javax.xml.bind.annotation.XmlType" %><%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2017-09-18
  Time: 오후 2:16
  To change this template use File | Settings | File Templates.
--%>
<!-- 1. Directive tag(지시자 태그) -->


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>First JSP</title>
</head>
<body>
<%-- 2. Comment Tag( JSP 주석 ) --%>
<%-- 3. Declaration Tag( 선언부 ) --%>

<%!
    private final static String DEFAULT_NAME = "Guest";
%>
<%-- 4. Scriptlet Tag(스크립틀릿) --%>
<%
    // 자바 코드를 그대로 작성
    String name = request.getParameter("name");
    if(name == null) name = DEFAULT_NAME;
%>
<%-- 5. Expression Tag(표현식) --%>
<h1>Hello, <%=name%></h1>
</body>
</html>
<%@page import="vo.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
    MemberBean m = new MemberBean();
    m.setName("dololak");
    pageContext.setAttribute("mem", m);
%>

<c:set var="name" value="#{mem.name}"/>
<% m.setName("dololak2"); %>


출력 : ${name}
</body>
</html>
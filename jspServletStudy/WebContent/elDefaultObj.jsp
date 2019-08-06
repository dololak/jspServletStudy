<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    session.setAttribute("age", 29); //슬픔
%>

<html>
<head>
<title>EL의 내장 객체 사용</title>
</head>
<body>
요청 파라미터의 name값 : ${param.name} <br/>
세션 스코프의 age 속성값 : ${sessionScope.age}
</body>
</html>
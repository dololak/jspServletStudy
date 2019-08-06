<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//     pageContext.setAttribute("name", "dololak1");
//     request.setAttribute("name", "dololak2");
    session.setAttribute("name", "dololak3");
    application.setAttribute("name", "dololak4");
%>

<html>
<head>
<title>EL의 스코프 우선 순위</title>
</head>
<body>
이름은 : ${name}
</body>
</html>
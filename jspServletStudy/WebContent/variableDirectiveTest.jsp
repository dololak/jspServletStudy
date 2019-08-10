<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="dololak" tagdir="/WEB-INF/tags" %>

<html>
<head>
<title>커스텀 태그  속성 공유 테스트</title>
</head>
<body>
    <!--태그실행 -->
    <dololak:sum num1="3" num2="10" />
    
    <!-- 실행후 공유된 변수값 출력 -->
    덧셈 결과 : ${sumResult}<br/> 
    <%-- 덧셈 결과2 : <%= pageContext.getAttribute("sumResult") %>  --%>
</body>
</html>
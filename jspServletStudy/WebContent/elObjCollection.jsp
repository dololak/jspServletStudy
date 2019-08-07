<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="vo.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    //Bean 객체
    MemberBean mem = new MemberBean();
    mem.setName("dololak");
    mem.setHobbies(new String[] {"블로그", "운동", "공부", "영화"});
    
    
    //List
    List<Integer> numberList = new ArrayList();
    numberList.add(1000);
    numberList.add(2000);
    numberList.add(3000);
    
    //Map
    Map<String, Long> score = new HashMap();
    score.put("kim", 80L);
    score.put("lee", 90L);
    score.put("park", 100L);
    
    //pageScope에 저장
    pageContext.setAttribute("mem", mem);
    pageContext.setAttribute("numberList", numberList);
    pageContext.setAttribute("score", score);
%>

<html>
<head>
<title>EL에서의 객체 및 컬렉션 사용</title>
</head>
<body>

이름은 : ${mem.name} <br/>
이름은2 : ${mem['name']} <br/>
이름은3 : ${mem.getName()} <br/>
취미는 : ${mem.hobbies[0]} <br/>

숫자1 : ${numberList[0]} <br/>
숫자2 : ${numberList[2]} <br/>

kim 점수 : ${score['kim']}<br/>
park 점수 : ${score.park} 

</body>
</html>
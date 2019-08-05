<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>EL 통합테스트</title>
</head>
<body>


<h1>산술연산자</h1>
\${1 + 2} : ${1 + 2} <br> 
\${"1" + 2} : ${"1" + 2} <br>
\${"1" + "2"} : ${"1" + "2"} <br>
\${null + 2} : ${null + 2} <br>
<%-- \${"one" + 2} : ${"one" + 2} <br>  --%>

\${1 - 2} : ${1 - 2} <br> 

\${10 * 3} : ${10 * 3} <br>

\${10 / 3} : ${10 / 3} <br>
\${10 div 3} : ${10 div 3} <br> 

\${10 % 3} : ${10 % 3} <br> 
\${10 mod 3} : ${10 mod 3} <br><br><br>




<h1>비교 연산자</h1>
\${10 == 10} : ${10 == 10} <br>
\${10 eq 10} : ${10 eq 10} <br>

\${'dololak' == 'dololak'} : ${'dololak' == 'dololak'} <br>
\${'dololak' eq 'dololak'} : ${'dololak' eq 'dololak'} <br>

\${10 != 9} : ${10 != 9} <br>
\${10 ne 9} : ${10 ne 9} <br>

\${'dololak' != 'dololak1'} : ${'dololak' != 'dololak1'} <br>
\${'dololak' ne 'dololak1'} : ${'dololak' ne 'dololak1'} <br>

\${3 < 10} : ${3 < 10} <br>
\${3 lt 10} : ${3 lt 10} <br>

\${10 > 3} : ${10 > 3} <br>
\${10 gt 3} : ${10 gt 3} <br>

\${3 <= 10} : ${3 <= 10} <br>
\${3 le 10} : ${3 le 10} <br>

\${10 >= 3} : ${10 >= 3} <br>
\${10 ge 3} : ${10 ge 3} <br><br><br>

 
 
 <h1>논리 연산자</h1>
\${1==1 && "dololak"=="dololak"} : ${1==1 && "dololak"=="dololak"} <br>
\${1==1 and "dololak"=="dololak"} : ${1==1 and "dololak"=="dololak"} <br>

\${1==1 || 1!=1} : ${1==1 || 1!=1} <br>
\${1==1 or 1!=1} : ${1==1 or 1!=1} <br>

\${!true } : ${!true } <br> 
\${not false } : ${not false } <br><br><br>


<h1>empty 연산자</h1>
<%
    String emptyValue = null;
    String emptyStr = "";
    Object[] emptyArr = new Object[0]; 
    List<String> emptyList = new ArrayList();
    Map<String, Object> emptyMap = new HashMap();
%> 

\${empty emptyValue} : ${empty emptyValue} <br> 
\${empty emptyStr} : ${empty emptyStr} <br> 
\${empty emptyArr} : ${empty emptyArr} <br> 
\${empty emptyList} : ${empty emptyList} <br> 
\${empty emptyMap} : ${empty emptyMap} <br> <br><br>



<h1>비교 선택 연산</h1>
\${10 == 10 ? 2000 : 3000 } : ${10 == 10 ? 2000: 3000 }


</body>
</html>
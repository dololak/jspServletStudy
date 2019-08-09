<%@ tag language="java" body-content="tagdependent" pageEncoding="UTF-8"%>

<%@ attribute name="color" required="true"  %>
<%@ attribute name="iterNum" required="true" type="java.lang.Integer" %>

<%
    //직업 attribute를 얻는것도 가능
    //int iterNum = (Integer)jspContext.getAttribute("iterNum");

    for(int i=0; i < iterNum; i++){
%>
    <span style="background-color: ${color}">
      ♥<jsp:doBody/>♥
    </span>
<%        
    }
%>

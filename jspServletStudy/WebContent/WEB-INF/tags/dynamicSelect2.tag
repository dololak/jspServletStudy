<%@ tag dynamic-attributes="optionMap" body-content="empty"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<select>
    <c:forEach var="item" items="${optionMap}">
        <option value="${item.key}">${item.value}</option>
    </c:forEach>
</select>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%
    String degreeParam = request.getParameter("degree");
    request.setAttribute("degreeVar", degreeParam);
%>

<c:choose>
    <c:when test="${degreeVar < -25}">it's frost</c:when>
    <c:when test="${degreeVar < 5}">it's cold</c:when>
    <c:when test="${degreeVar < 25}">it's warm</c:when>
    <c:when test="${degreeVar >=25}">it's damn hot</c:when>
    <c:otherwise>Where is my temperature?</c:otherwise>
</c:choose>
</body>
</html>

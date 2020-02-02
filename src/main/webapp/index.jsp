<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%
    String[] tagTypes = new String[] { "for", "if", "case", "import" };
    request.setAttribute("urls", tagTypes);
%>
<h3>Pages with examples for:</h3>
<ur>
    <c:forEach var="url" items="${urls}">
        <li>
            <a href="<c:url value='${url}.jsp' />">${url}</a>
        </li>
    </c:forEach>
</ur>
</body>
</html>

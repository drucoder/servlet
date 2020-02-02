<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<c:url value="title.jsp" var="importUrl">
    <c:param name="pageName" value="import template page" />
</c:url>

<h1>Main page</h1>
<c:import url="${importUrl}" />
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%
    String hourParam = request.getParameter("hour");
    request.setAttribute("hourVar", hourParam);
%>

<c:if test="${hourVar >= 10 && hourVar < 19}">
    ${hourVar} is a day
</c:if>
</body>
</html>

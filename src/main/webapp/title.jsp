<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%
    String pageNameParam = request.getParameter("pageName");
    request.setAttribute("pageNameVar", pageNameParam);
%>
<h3>This is a subpart of ${pageNameVar}</h3>
</body>
</html>

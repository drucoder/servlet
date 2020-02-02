<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%
    String[] times = new String[] { "summer", "autumn", "winter", "spring" };
    request.setAttribute("items", times);
%>
<h3>For each loop</h3>

<ul>
    <c:forEach var="item" items="${items}">
        <li>${item}</li>
    </c:forEach>
</ul>

<h3>For each with counter</h3>

<table>
    <thead>
    <tr>
        <th>item</th>
        <th>index</th>
        <th>count</th>
        <th>first</th>
        <th>last</th>
        <th>step</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="item" items="${items}" step="1" varStatus="status">
        <tr>
            <td>${item}</td>
            <td>${status.index}</td>
            <td>${status.count}</td>
            <td>${status.first}</td>
            <td>${status.last}</td>
            <td>${status.step}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<h3>For tokens loop</h3>
<ul>
    <c:forTokens items="Ha Noi,Phuket town,Jakarta" delims="," var="name">
        <li>${name}</li>
    </c:forTokens>
</ul>
</body>
</html>

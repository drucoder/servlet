<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.List" %>
<%@ page import="letscode.User" %>

<!doctype html>
<html>
<head>
    <title>First JSP</title>
</head>
<body>
<h1>Hello JSP</h1>
<%
    response.getWriter().write("First message");
    out.print("right here, after header");
%>
<br/>
<%= request.getRequestURI() %>
<br>
<%= LocalDateTime.now() %>
<hr/>
<%
    List<User> users = (List) request.getAttribute("users");
    User anUser = users.get(0);
%>
    <b><%= anUser.getName() %></b>
    <i><%= anUser.getCountry() %></i>
    <u><%= anUser.getAge() %></u>

<table>
<% for (User user : users) {%>
    <tr>
       <td><%= user.getName() %></td>
       <td>
           <% if (user.getCountry().equals("Vietnam")) { %>
                <b><%= user.getCountry() %></b>
           <% } else { %>
                <%= user.getCountry() %>
           <% } %>
       </td>
       <td><%= user.getAge() %></td>
    </tr>
<% } %>
</table>
</body>
</html>

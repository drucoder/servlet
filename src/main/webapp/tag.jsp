<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="letscodeTags" prefix="lct" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <lct:emptyTag />

    <lct:paramsTag
            a="10"
            b="100"
    >
        <%= 100 * 3 %>
    </lct:paramsTag>

    <lct:textBodyTag
        iterations="3"
    >
        <tr>
            <td>some text</td>
            <td><lct:emptyTag /></td>
            <td><%= 100 %>></td>
        </tr>
    </lct:textBodyTag>

    <lct:expressionBodyTag>
        world - is our all.rabbit - is a just animal.java - best programming language
    </lct:expressionBodyTag>
</body>
</html>

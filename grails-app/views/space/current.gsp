<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Current Projects</title>
</head>
<body>
<table border="1">
    <g:each in="${allSpaces}" status="i" var="thisSpace">
        <tr>
            <td>${i} : ${thisSpace.description}</td>
        </tr>
    </g:each>
</table>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: yion
  Date: 2014. 12. 7.
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Upload New Document</title>
</head>
<body>
<div class="content scaffold-create" role="main">
    <h1>Upload New Document</h1>
    <g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
    <g:uploadForm action="upload" method="POST">
        <fieldset class="form">
            <input type="file" name="file" />
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="upload" class="save" value="Upload" />
        </fieldset>
    </g:uploadForm>
</div>
</body>
</html>
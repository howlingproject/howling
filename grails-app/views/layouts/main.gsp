<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><g:layoutTitle default="::Enterprise OpenSource Wiki – GLiDER™"/></title>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <r:require modules="jquery, twBootstrap, application" />
</head>
<body>
    <!-- header -->
    <r:layoutResources />
    <g:render template="/common/header" />
    <!--// header -->

    <!-- contents -->
    <g:layoutBody/>
    <!--// contents -->

    <!-- footer -->
    <g:render template="/common/footer" />
    <!--// footer -->
    <r:layoutResources />
</body>
</html>

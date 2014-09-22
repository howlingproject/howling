<%--
  Created by IntelliJ IDEA.
  User: yion
  Date: 2014. 9. 21.
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>::Enterprise OpenSource Wiki – GLiDER™</title>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://bootswatch.com/cerulean/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

    <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.1.1.min.js"></script>
    <script src="../js/edit/fn-editor-util.js"></script>
    <script src="../js/edit/fn-layer-select.js"></script>
    <script src="../js/edit/fn-editor-selector-v4.js"></script>
    <script src="../js/edit/fn-editor.js"></script>
    <script src="../js/edit/fn-son-markdown.js"></script>
    <script src="../js/edit/imsi-edit-mini.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            var askEdit = document.getElementById("askEdit");
            $.sonEdit(askEdit);

        });
    </script>
</head>
<body>

<!-- header -->
<header class="navbar navbar-default" id="header">
    <div class="container">
        <div class="navbar-header">
            <button data-target=".bs-navbar-collapse" data-toggle="collapse" type="button" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../">GLiDERWiki</a>
        </div>

        <nav role="navigation" class="navbar-collapse bs-navbar-collapse collapse">
            <ul class="nav navbar-nav navi-menu">
                <li class="active">
                    <a href="#">Feeds</a>
                </li>
                <li>
                    <a href="#">Q&amp;A</a>
                </li>
                <li>
                    <a href="#">Space</a>
                </li>
                <li>
                    <a href="#">Wiki</a>
                </li>
                <li>
                    <a href="#">My Info</a>
                </li>
                <li>
                    <a href="#">Admin</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right navi-info">
                <li><a href="#"><i class="fa fa-user fa-2x"></i></a></li>
                <li><a href="#"><i class="fa fa-weixin fa-2x"></i></a></li>
            </ul>
        </nav>
    </div>
</header>
<!--// header -->
<!-- contents -->
<div class="container">
    <section id="forms">
        <div class="page-header">
            <h2>공간 생성하기</h2>
        </div>

        <div class="row" style="width:100%">
            <div style="padding-left:30px">
                <!-- <h3>Form Horizontal</h3> -->

                <form class="form-horizontal well">
                    <fieldset>
                        <legend>공간 제목</legend>
                        <div class="control-group">
                            <div class="controls">
                                <input type="text" class="form-control input-xlarge" id="input01">
                                <p class="help-block">공간 제목 입력 후 Tab 이동시 공간명 중복 검사를 합니다.</p>
                            </div>
                        </div>
                        <p style="padding-top:20px"></p>
                        <legend>공간 이미지</legend>
                        <div class="control-group">

                            <div class="col-lg-6">
                                <div class="col-xs-8 col-md-8">
                                    <input id="file-attachment" type="file" style="display:none">
                                    <input id="fileAttachmentInput" class="form-control" type="text"
                                           placeholder="공간을 표현할 수 있는 대표 이미지를 등록하세요.">
                                </div>
                                <div>
                                    <button class="btn btn-info btn-default" type="button"
                                            onclick="$('input[id=file-attachment]').click();">파일선택
                                    </button>
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <label class="pull-right">이미지 미리보기</label>
                            </div>
                            <div class="col-lg-4">
                                <img src="https://octodex.github.com/images/droctocat.png" alt="이미지 미리보기" class="img-thumbnail image-preview">
                            </div>
                        </div>
                        <p style="padding-top:20px"></p>
                        <legend>공간 설명</legend>
                        <div class="control-group">
                            <div class="modal-body" id="askEdit">


                                <p class="help-block">공간 메인 화면에 입력한 설명이 display 됩니다. (markdown 지원) </p>
                            </div>
                        </div>

                        <p style="padding-top:20px"></p>
                        <legend>공개 여부</legend>
                        <div class="control-group">
                            <div class="controls">
                                <label class="checkbox-inline">
                                    <input type="radio" name="privacy" id="inlineCheckbox1" value="option1"> 공개
                                </label>
                                <label class="checkbox-inline">
                                    <input type="radio" name="privacy" id="inlineCheckbox2" value="option2"> 비공개
                                </label>

                            </div>
                        </div>
                        <p style="padding-top:20px"></p>
                        <legend>레이아웃</legend>
                        <div class="control-group">

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="panel panel-info">
                                        <div class="panel-heading"><input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"> 기본형</div>
                                        <div class="panel-body">
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th colspan="2" class="text-center">
                                                        <div style="margin: 30px"><strong>공간설명</strong></div>
                                                    </th>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">
                                                        <div style="margin: 30px"><strong>메뉴목록</strong></div>
                                                    </td>
                                                    <td class="text-center">
                                                        <div style="margin: 30px"><strong>최근위키</strong></div>
                                                    </td>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading"><input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"> 좌측 메뉴</div>
                                        <div class="panel-body">
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th rowspan="2" class="text-center" style="width:80px">
                                                        <div style="margin: 30px"><strong>메뉴목록</strong></div>
                                                    </th>
                                                    <th class="text-center">
                                                        <div style="margin: 30px"><strong>공간설명</strong></div>
                                                    </th>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">
                                                        <div style="margin: 30px"><strong>최근위키</strong></div>
                                                    </td>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="panel panel-success">
                                        <div class="panel-heading"><input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"> 우측 메뉴</div>
                                        <div class="panel-body">
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th class="text-center">
                                                        <div style="margin: 30px"><strong>공간설명</strong></div>
                                                    </th>
                                                    <th rowspan="2" class="text-center" style="width:80px">
                                                        <div style="margin: 30px"><strong>메뉴목록</strong></div>
                                                    </th>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">
                                                        <div style="margin: 30px"><strong>최근위키</strong></div>
                                                    </td>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <p style="padding-top:20px"></p>
                        <legend>키워드 </legend>

                        <div class="control-group">
                            <div class="col-sm-5 col-md-5">
                                <div id="tag-info" class="form-inline" style="padding-bottom: 10px">
                                    <input type="text" class="form-control" id="interesting" placeholder="Keyword">
                                    <button class="btn" type="button">Add <i class="glyphicon glyphicon-plus"></i></button>
                                </div>

                                <ul id="tag-cloud" style="padding-left: 0px; width:100%;"></ul>
                            </div>

                        </div>
                    </fieldset>
                </form>
            </div>

            <div class="form-actions text-center">
                <button type="submit" class="btn btn-primary">Save changes</button>
                <button type="reset" class="btn">Cancel</button>
            </div>


        </div>

    </section>
</div>
<!--// contents -->

<!-- footer -->
<footer id="footer">
    <div class="container">
        <div class="col-md-12 text-center">
            <ul class="list-inline">
                <li>사이트 소개</li>
                <li>Wiki 다운로드</li>
                <li>Contact Us</li>
                <li>Home</li>
            </ul>
        </div>
        <div class="col-md-12 text-center">
            <p class="">
                Copyright © 2014 GLiDERWiki™ OpenSource Team
            </p>
        </div>
    </div>
</footer>
<!--// footer -->

<link href="../js/bootstrap-tag-cloud/bootstrap-tag-cloud.css" rel="stylesheet">
<script type='text/javascript' src="../js/bootstrap-tag-cloud/bootstrap-tag-cloud.js"></script>
<script type='text/javascript'>
    $(function () {

    });
</script>


<script type="text/javascript">
    $('input[id="file-attachment"]').change(function () {
        $('#attachmentInput').val($(this).val());
    });
</script>

</body>
</html>

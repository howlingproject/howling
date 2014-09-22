<%--
  Created by IntelliJ IDEA.
  User: yion
  Date: 2014. 9. 22.
  Time: 9:14
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
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
    <div class="container qna-top-search">
        <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
            </div>
            <a href="#" class="form-control btn btn-primary">검색</a>
        </form>
        <div class="btn-group pull-right" data-toggle="buttons">
            <a href="#" class="btn btn-primary">개설된 공간수(200)</a>
            <a href="#" class="btn btn-primary">생성된 위키수(3000)</a>
            <a href="#" class="btn btn-primary">등록된 키워드수(11200)</a>
        </div>
    </div>

    <!-- 메뉴 -->
    <div class="container contents-container top-buffer">
        <!-- keyword -->
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
            <div class="nav-tabs-header">분류키워드</div>
            <div class="media qna-item">
                <ul class="nav nav-pills nav-stacked cat-keyword">
                    <li class="active"><a href="#">Java(120/789)</a></li>
                    <li><a href="#">Spring(120/539)</a></li>
                    <li><a href="#">Groovy(100/299)</a></li>
                    <li><a href="#">Grails(3/300)</a></li>
                    <li><a href="#">Gradle(282/402)</a></li>
                    <li><a href="#">Tomcat(282/402)</a></li>
                    <li><a href="#">Apache(282/402)</a></li>
                    <li><a href="#">Javascript(282/402)</a></li>
                    <li><a href="#">NodeJS(282/402)</a></li>
                    <li><a href="#">MySQL(282/402)</a></li>
                    <li><a href="#">MariaDB(282/402)</a></li>
                </ul>
            </div>
        </div>
        <!--// lnb -->

        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">

        <!-- 최근 Q&A -->
        <div class="nav-tabs-header">전체 공간
            <span class="pull-right section-category">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#">Today</a></li>
                    <li><a href="#">Week</a></li>
                </ul>
            </span>
        </div>

        <div class="best-qna-item">
            <div>
                <strong> 공간 명이 출력됩니다.</strong>
                <div class="pull-right">
                    <span class="label label-primary">Spring</span>
                    <span class="label label-success">JAVA</span>
                    <span class="label label-warning">JavaScript</span>
                </div>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...위키를 추가...<span class="badge">291</span></div>
                <div class="pull-left">오너 : sjune</div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <div class="best-qna-item">
            <div>
                <strong> 공간 명이 출력됩니다.</strong>
                <div class="pull-right">
                    <span class="label label-primary">Spring</span>
                    <span class="label label-success">JAVA</span>
                    <span class="label label-warning">JavaScript</span>
                </div>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...위키를 추가...<span class="badge">291</span></div>
                <div class="pull-left">오너 : sjune</div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>



        <div class="best-qna-item">
            <div>
                <strong> 공간 명이 출력됩니다.</strong>
                <div class="pull-right">
                    <span class="label label-primary">Spring</span>
                    <span class="label label-success">JAVA</span>
                    <span class="label label-warning">JavaScript</span>
                </div>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...위키를 추가...<span class="badge">291</span></div>
                <div class="pull-left">오너 : sjune</div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>



        <div class="best-qna-item">
            <div>
                <strong> 공간 명이 출력됩니다.</strong>
                <div class="pull-right">
                    <span class="label label-primary">Spring</span>
                    <span class="label label-success">JAVA</span>
                    <span class="label label-warning">JavaScript</span>
                </div>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...위키를 추가...<span class="badge">291</span></div>
                <div class="pull-left">오너 : sjune</div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>



        <div class="best-qna-item">
            <div>
                <strong> 공간 명이 출력됩니다.</strong>
                <div class="pull-right">
                    <span class="label label-primary">Spring</span>
                    <span class="label label-success">JAVA</span>
                    <span class="label label-warning">JavaScript</span>
                </div>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...위키를 추가...<span class="badge">291</span></div>
                <div class="pull-left">오너 : sjune</div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>


        <!--// 최근 Q&A -->
    </div>

    <div class="col-md-4">
        <!-- BEST Q&A -->
        <div class="nav-tabs-header">내 즐겨찾기 공간</div>
        <div class="best-qna-item">
            <div>
                <span class="label label-primary">Spring</span>
                <span class="label label-success">JAVA</span>
                <strong> 스프링 AOP에 대해서 설명 좀</strong>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...
                    <span class="badge">1927</span>
                </div>
                <div class="user-profile-sm">
                    <span class="nickname">용퓌</span>
                </div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <div class="best-qna-item">
            <div>
                <span class="label label-warning">JavaScript</span>
                <strong> 자바스크립트 AOP 설명좀 </strong>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile"><img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    그런거 없습니다.그런거 없습니다.그런거 없습니다.그런거 없습니다.그런거 없습..
                    <span class="badge">1927</span>
                </div>
                <div class="user-profile-sm">
                    <span class="nickname">선준</span>
                </div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <div class="best-qna-item">
            <div>
                <span class="label label-primary">Spring</span>
                <span class="label label-success">JAVA</span>
                <strong> 스프링 AOP에 대해서 설명 좀</strong>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile"><img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...
                    <span class="badge">1927</span>
                </div>
                <div class="user-profile-sm">
                    <span class="nickname">Quick</span>
                </div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <div class="best-qna-item">
            <div>
                <span class="label label-primary">Spring</span>
                <span class="label label-success">JAVA</span>
                <strong> 스프링 AOP에 대해서 설명 좀</strong>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile"><img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...
                    <span class="badge">1927</span>
                </div>
                <div class="user-profile-sm">
                    <span class="nickname">손간지</span>
                </div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <div class="best-qna-item">
            <div>
                <span class="label label-primary">Spring</span>
                <span class="label label-success">JAVA</span>
                <strong> 스프링 AOP에 대해서 설명 좀</strong>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile"><img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...
                    <span class="badge">1927</span>
                </div>
                <div class="user-profile-sm">
                    <span class="nickname">용퓌</span>
                </div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <!--// BEST Q&A -->

        <!-- BEST Q&A -->
        <div class="top-buffer">&nbsp;</div>
        <div class="nav-tabs-header">최근 위키</div>
        <div class="best-qna-item">
            <div>
                <span class="label label-primary">Spring</span>
                <span class="label label-success">JAVA</span>
                <strong> 스프링 AOP에 대해서 설명 좀</strong>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...
                    <span class="badge">1927</span>
                </div>
                <div class="user-profile-sm">
                    <span class="nickname">용퓌</span>
                </div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <div class="best-qna-item">
            <div>
                <span class="label label-warning">JavaScript</span>
                <strong> 자바스크립트 AOP 설명좀 </strong>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile"><img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    그런거 없습니다.그런거 없습니다.그런거 없습니다.그런거 없습니다.그런거 없습..
                    <span class="badge">1927</span>
                </div>
                <div class="user-profile-sm">
                    <span class="nickname">선준</span>
                </div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <div class="best-qna-item">
            <div>
                <span class="label label-primary">Spring</span>
                <span class="label label-success">JAVA</span>
                <strong> 스프링 AOP에 대해서 설명 좀</strong>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile"><img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...
                    <span class="badge">1927</span>
                </div>
                <div class="user-profile-sm">
                    <span class="nickname">Quick</span>
                </div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <div class="best-qna-item">
            <div>
                <span class="label label-primary">Spring</span>
                <span class="label label-success">JAVA</span>
                <strong> 스프링 AOP에 대해서 설명 좀</strong>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile"><img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...
                    <span class="badge">1927</span>
                </div>
                <div class="user-profile-sm">
                    <span class="nickname">손간지</span>
                </div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <div class="best-qna-item">
            <div>
                <span class="label label-primary">Spring</span>
                <span class="label label-success">JAVA</span>
                <strong> 스프링 AOP에 대해서 설명 좀</strong>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <div class="user-profile"><img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    첫번째 타임라인 어쩌구 저쩌구해서 내용이 나오는데 어쩌구 저쩌구~? 솰라솰라...
                    <span class="badge">1927</span>
                </div>
                <div class="user-profile-sm">
                    <span class="nickname">용퓌</span>
                </div>
                <div class="pull-right">2014-04-05 12:12</div>
            </div>
        </div>

        <!--// BEST Q&A -->


    </div>
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

</body>
</html>

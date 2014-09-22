<%--
  Created by IntelliJ IDEA.
  User: yion
  Date: 2014. 9. 22.
  Time: 9:15
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
    <div class="col-md" >
        <div style="padding-bottom: 45px;">
            <div class="btn-group" data-toggle="buttons" style="float: right">
                <a href="#" class="btn btn-primary">공간 정보수정</a>
                <a href="#" class="btn btn-primary">위키 생성</a>
                <a href="#" class="btn btn-primary">첨부파일 목록</a>
            </div>
        </div>
    </div>

</div>

<!--// contents -->


<div class="container components">
<h1>공간의 제목이 여기에 들어가야 겠죠.</h1>
<hr>
<div class="row row-offcanvas row-offcanvas-right">
<div class="col-xs-12 col-sm-9">
    <p class="pull-right visible-xs">
        <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
    </p>
    <div class="jumbotron">
        <h3>Hello, world! 공간 설명 샘플</h3>
        <p>This is an example to show the potential of an offcanvas layout pattern in Bootstrap. Try some responsive-range viewport sizes to see it in action.</p>
    </div>

    <div class="row">


        <h3>최근 이 공간의 활동 내역 10개 출력합시다. </h3>
        <blockquote class="pull-left">

            <div class="media">
                <a href="#" class="pull-left">
                    <div class="user-profile-sm">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>

                <div class="media-body" style="font-size:13px">
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
                    purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                    fringilla. Donec lacinia congue felis in faucibus.
                    <span class="badge">1927</span>
                </div>
            </div>

            <div class="media">
                <a href="#" class="pull-left">
                    <div class="user-profile-sm">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>

                <div class="media-body" style="font-size:13px">
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
                    purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                    fringilla. Donec lacinia congue felis in faucibus.
                    <span class="badge">1927</span>
                </div>
            </div>

            <div class="media">
                <a href="#" class="pull-left">
                    <div class="user-profile-sm">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>

                <div class="media-body" style="font-size:13px">
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
                    purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                    fringilla. Donec lacinia congue felis in faucibus.
                    <span class="badge">1927</span>
                </div>
            </div>


            <div class="media">
                <a href="#" class="pull-left">
                    <div class="user-profile-sm">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>

                <div class="media-body" style="font-size:13px">
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
                    purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                    fringilla. Donec lacinia congue felis in faucibus.
                    <span class="badge">1927</span>
                </div>
            </div>

            <div class="media">
                <a href="#" class="pull-left">
                    <div class="user-profile-sm">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>

                <div class="media-body" style="font-size:13px">
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
                    purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                    fringilla. Donec lacinia congue felis in faucibus.
                    <span class="badge">1927</span>
                </div>
            </div>

            <small><cite title="Source Title">더보기</cite></small>

        </blockquote>

        <hr>


        <h3>이 공간의 최근 댓글을 10개 출력합시다. </h3>
        <blockquote class="pull-right">
            <div class="media">
                <a href="#" class="pull-left">
                    <div class="user-profile-sm">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>

                <div class="media-body" style="font-size:13px">
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
                    purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                    fringilla. Donec lacinia congue felis in faucibus.

                </div>
            </div>
            <div class="media">
                <a href="#" class="pull-left">
                    <div class="user-profile-sm">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>

                <div class="media-body" style="font-size:13px">
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
                    purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                    fringilla. Donec lacinia congue felis in faucibus.

                </div>
            </div>

            <div class="media">
                <a href="#" class="pull-left">
                    <div class="user-profile-sm">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>

                <div class="media-body" style="font-size:13px">
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
                    purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                    fringilla. Donec lacinia congue felis in faucibus.

                </div>
            </div>

            <div class="media">
                <a href="#" class="pull-left">
                    <div class="user-profile-sm">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>

                <div class="media-body" style="font-size:13px">
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
                    purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                    fringilla. Donec lacinia congue felis in faucibus.

                </div>
            </div>

            <div class="media">
                <a href="#" class="pull-left">
                    <div class="user-profile-sm">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>

                <div class="media-body" style="font-size:13px">
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras
                    purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                    fringilla. Donec lacinia congue felis in faucibus.

                </div>
            </div>


            <small><cite title="Source Title">더보기</cite></small>
        </blockquote>

    </div><!--/row-->
</div><!--/span-->

<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
    <div class="well sidebar-nav">
        <h4>h4. Heading 4 <span class="badge">19</span></h4>
        <h5 style="margin-left:10px">- h5. Heading 5 <span class="badge">11</span></h5>
        <h5 style="margin-left:20px">- h5. Heading 5 <span class="badge">23</span></h5>
        <h5 style="margin-left:30px">- h5. Heading 5 <span class="badge">33</span></h5>

        <h4>h4. Heading 4 <span class="badge">19</span></h4>
        <h5 style="margin-left:10px">- h5. Heading 5 <span class="badge">11</span></h5>
        <h5 style="margin-left:20px">- h5. Heading 5 <span class="badge">23</span></h5>
        <h5 style="margin-left:30px">- h5. Heading 5 <span class="badge">33</span></h5>

        <h4>h4. Heading 4 <span class="badge">19</span></h4>
        <h5 style="margin-left:10px">- h5. Heading 5 <span class="badge">11</span></h5>
        <h5 style="margin-left:20px">- h5. Heading 5 <span class="badge">23</span></h5>
        <h5 style="margin-left:30px">- h5. Heading 5 <span class="badge">33</span></h5>

        <h4>h4. Heading 4 <span class="badge">19</span></h4>
        <h5 style="margin-left:10px">- h5. Heading 5 <span class="badge">11</span></h5>
        <h5 style="margin-left:20px">- h5. Heading 5 <span class="badge">23</span></h5>
        <h5 style="margin-left:30px">- h5. Heading 5 <span class="badge">33</span></h5>
    </div><!--/.well -->
</div><!--/span-->
</div>
</div>



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

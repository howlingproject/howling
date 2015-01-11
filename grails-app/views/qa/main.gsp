<%--
  Created by IntelliJ IDEA.
  User: yong
  Date: 2014. 9. 22.
  Time: 오후 10:57
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<g:render template="/include/indicator"/>
<!-- contents -->
<!-- qna top contents -->
<div class="container qna-top-search">
    <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
        </div>
        <a href="#" class="form-control btn btn-primary">검색</a>
    </form>
    <div class="btn-group pull-right">
        <a href="#" class="btn btn-primary">수정1</a>
        <a href="#" class="btn btn-primary">수정2</a>
        <a href="#" class="btn btn-primary">수정3</a>
        <a href="#" class="btn btn-primary">수정4</a>
        <g:link controller="qa" action="create" class="btn btn-primary">질문하기</g:link>
    </div>
</div>
<!--// qna top contents -->

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
        <div class="nav-tabs-header">최근 Q&A
            <span class="pull-right section-category">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#">Today</a></li>
                    <li><a href="#">Week</a></li>
                </ul>
            </span>
        </div>

        <div class="media qna-item">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                </div>
            </a>
            <div class="row">
                <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
                    <div class="media-body">
                        <div class="media-heading">
                            <span>2014-04-05 12:12</span>
                            <div class="pull-right">
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                            </div>
                        </div>
                        <div class="qna-title">
                            <span>Spring 정복하기!</span>
                        </div>
                        Spring 서버사이드 공간 > Spring AOP 위키에 질문을 올렸습니다.- 내용이 잘 이해가...
                        <span class="badge">1927</span>
                    </div>
                </div>
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
                    <button class="btn btn-sm btn-default btn-sm-fixed">조회 0</button>
                    <button class="btn btn-sm btn-default btn-sm-fixed">추천 999</button>
                </div>
            </div>
        </div>

        <div class="media qna-item">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                </div>
            </a>
            <div class="row">
                <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
                    <div class="media-body">
                        <div class="media-heading">
                            <span>2014-04-05 12:12</span>
                            <div class="pull-right">
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                            </div>
                        </div>
                        <div class="qna-title">
                            <span>Spring 정복하기!</span>
                        </div>
                        Spring 서버사이드 공간 > Spring AOP 위키에 질문을 올렸습니다.- 내용이 잘 이해가...
                        <span class="badge">1927</span>
                    </div>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
                    <button class="btn btn-sm btn-default btn-sm-fixed">조회 0</button>
                    <button class="btn btn-sm btn-default btn-sm-fixed">추천 999</button>
                </div>
            </div>
        </div>

        <div class="media qna-item">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                </div>
            </a>
            <div class="row">
                <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
                    <div class="media-body">
                        <div class="media-heading">
                            <span>2014-04-05 12:12</span>
                            <div class="pull-right">
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                            </div>
                        </div>
                        <div class="qna-title">
                            <span>Spring 정복하기!</span>
                        </div>
                        Spring 서버사이드 공간 > Spring AOP 위키에 질문을 올렸습니다.- 내용이 잘 이해가...
                        <span class="badge">1927</span>
                    </div>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
                    <button class="btn btn-sm btn-default btn-sm-fixed">조회 0</button>
                    <button class="btn btn-sm btn-default btn-sm-fixed">추천 999</button>
                </div>
            </div>
        </div>

        <div class="media qna-item">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                </div>
            </a>
            <div class="row">
                <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
                    <div class="media-body">
                        <div class="media-heading">
                            <span>2014-04-05 12:12</span>
                            <div class="pull-right">
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                            </div>
                        </div>
                        <div class="qna-title">
                            <span>Spring 정복하기!</span>
                        </div>
                        Spring 서버사이드 공간 > Spring AOP 위키에 질문을 올렸습니다.- 내용이 잘 이해가...
                        <span class="badge">1927</span>
                    </div>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
                    <button class="btn btn-sm btn-default btn-sm-fixed">조회 0</button>
                    <button class="btn btn-sm btn-default btn-sm-fixed">추천 999</button>
                </div>
            </div>
        </div>

        <div class="media qna-item">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                </div>
            </a>
            <div class="row">
                <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
                    <div class="media-body">
                        <div class="media-heading">
                            <span>2014-04-05 12:12</span>
                            <div class="pull-right">
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                            </div>
                        </div>
                        <div class="qna-title">
                            <span>Spring 정복하기!</span>
                        </div>
                        Spring 서버사이드 공간 > Spring AOP 위키에 질문을 올렸습니다.- 내용이 잘 이해가...
                        <span class="badge">1927</span>
                    </div>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
                    <button class="btn btn-sm btn-default btn-sm-fixed">조회 0</button>
                    <button class="btn btn-sm btn-default btn-sm-fixed">추천 999</button>
                </div>
            </div>
        </div>
        <!--// 최근 Q&A -->
        <div class="top-buffer">&nbsp;</div>
        <!-- 답변을 기다리는 Q&A -->
        <div class="nav-tabs-header">답변을 기다리는 Q&A
            <span class="pull-right section-category">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#">Today</a></li>
                    <li><a href="#">Week</a></li>
                    <li><a href="#">All</a></li>
                </ul>
            </span>
        </div>

        <div class="media qna-item">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                </div>
            </a>
            <div class="row">
                <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
                    <div class="media-body">
                        <div class="media-body">
                            <div class="media-heading">
                                <span>2014-04-05 12:12</span>
                                <div class="pull-right">
                                    <span class="label label-primary">Spring</span>
                                    <span class="label label-primary">Spring</span>
                                    <span class="label label-primary">Spring</span>
                                    <span class="label label-primary">Spring</span>
                                </div>
                            </div>
                            <div class="qna-title">
                                <span>Spring 정복하기!</span>
                            </div>
                            Spring 서버사이드 공간 > Spring AOP 위키에 질문을 올렸습니다.- 내용이 잘 이해가...
                            <span class="badge">1927</span>
                        </div>
                    </div>
                </div>
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
                    <button class="btn btn-sm btn-default btn-sm-fixed">조회 0</button>
                    <button class="btn btn-sm btn-default btn-sm-fixed">추천 999</button>
                </div>
            </div>
        </div>

        <div class="media qna-item">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                </div>
            </a>
            <div class="row">
                <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
                    <div class="media-body">
                        <div class="media-heading">
                            <span>2014-04-05 12:12</span>
                            <div class="pull-right">
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                            </div>
                        </div>
                        <div class="qna-title">
                            <span>Spring 정복하기!</span>
                        </div>
                        Spring 서버사이드 공간 > Spring AOP 위키에 질문을 올렸습니다.- 내용이 잘 이해가...
                        <span class="badge">1927</span>
                    </div>
                </div>
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
                    <button class="btn btn-sm btn-default btn-sm-fixed">조회 0</button>
                    <button class="btn btn-sm btn-default btn-sm-fixed">추천 999</button>
                </div>
            </div>
        </div>

        <div class="media qna-item">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                </div>
            </a>
            <div class="row">
                <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
                    <div class="media-body">
                        <div class="media-heading">
                            <span>2014-04-05 12:12</span>
                            <div class="pull-right">
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                            </div>
                        </div>
                        <div class="qna-title">
                            <span>Spring 정복하기!</span>
                        </div>
                        Spring 서버사이드 공간 > Spring AOP 위키에 질문을 올렸습니다.- 내용이 잘 이해가...
                        <span class="badge">1927</span>
                    </div>
                </div>
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
                    <button class="btn btn-sm btn-default btn-sm-fixed">조회 0</button>
                    <button class="btn btn-sm btn-default btn-sm-fixed">추천 999</button>
                </div>
            </div>
        </div>

        <div class="media qna-item">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                </div>
            </a>
            <div class="row">
                <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
                    <div class="media-body">
                        <div class="media-heading">
                            <span>2014-04-05 12:12</span>
                            <div class="pull-right">
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                            </div>
                        </div>
                        <div class="qna-title">
                            <span>Spring 정복하기!</span>
                        </div>
                        Spring 서버사이드 공간 > Spring AOP 위키에 질문을 올렸습니다.- 내용이 잘 이해가...
                        <span class="badge">1927</span>
                    </div>
                </div>
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
                    <button class="btn btn-sm btn-default btn-sm-fixed">조회 0</button>
                    <button class="btn btn-sm btn-default btn-sm-fixed">추천 999</button>
                </div>
            </div>
        </div>

        <div class="media qna-item">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                </div>
            </a>
            <div class="row">
                <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
                    <div class="media-body">
                        <div class="media-heading">
                            <span>2014-04-05 12:12</span>
                            <div class="pull-right">
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                                <span class="label label-primary">Spring</span>
                            </div>
                        </div>
                        <div class="qna-title">
                            <span>Spring 정복하기!</span>
                        </div>
                        Spring 서버사이드 공간 > Spring AOP 위키에 질문을 올렸습니다.- 내용이 잘 이해가...
                        <span class="badge">1927</span>
                    </div>
                </div>
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
                    <button class="btn btn-sm btn-default btn-sm-fixed">조회 0</button>
                    <button class="btn btn-sm btn-default btn-sm-fixed">추천 999</button>
                </div>
            </div>
        </div>
        <!--// 답변을 기다리는 Q&A -->
    </div>

    <div class="col-md-4">
        <!-- BEST Q&A -->
        <div class="nav-tabs-header">BEST Q&A</div>
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
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
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
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
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
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
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
                    <div class="user-profile">
                        <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                    </div>
                </a>
                <div class="media-body">
                    그런거 없습니다.그런거 없습니다.그런거 없습니다.그런거 없습니다.그런거 없습..
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
        <!--// BEST Q&A -->
    </div>
</div>

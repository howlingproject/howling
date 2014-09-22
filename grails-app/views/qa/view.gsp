<%--
  Created by IntelliJ IDEA.
  User: yong
  Date: 2014. 9. 22.
  Time: 오후 10:57
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <script src="../js/edit/fn-son-markdown.js"></script>
    <script src="../js/edit/imsi-edit-mini.js"></script>
</head>

<body>
    <!-- 메뉴 -->
    <div class="container contents-container">
        <!-- contents -->
        <div class="col-md-12">
            <!-- 관련키워드 -->
            <div class="row top-buffer">
                <span class="col-md-12 pull-left section-category qna-alert-info">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#">관련 키워드</a></li>
                        <li class="pull-right">
                            <span class="label label-primary">Spring</span>
                            <span class="label label-success">JAVA</span>
                            <div class="user-profile-sm">
                                <span class="nickname">sjune</span>
                                <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                            </div>
                        </li>
                    </ul>
                </span>
            </div>
            <!--// 관련키워드 -->
            <div class="media form-group top-buffer">
                <!-- 본문 제목, 내용 -->
                <div class="alert alert-info">
                    <div class="row">
                        <div class="col-md-8">
                            <span class="qna-alert-title">Spring 공간 >> Spring AOP 에 대해서...</span>
                            <span class="badge">1927</span>
                        </div>
                        <div class="col-md-4 text-right">
                            <span class="qna-alert-title">2014.06.22 12:11:11</span>
                            <span class="readCnt qna-alert-title">조회수 : 123</span>
                        </div>
                    </div>
                </div>
                <div>
                    <p>
                        헤드라인은 총 3가지 타입으로 제일 큰 헤드라인, 중간 헤드라인, 작은 헤드라인으로 나뉩니다.<br>
                        위에 제일 큰 폰트로 백 그라운드 배경 색상이 존재하게 됩니다. (박스)<br>
                        헤드라인은 목차로 뽑혀 우측에 차례 형태로 리스팅 됩니다.<br><br>
                        차례 섹션은 닫기 버튼을 통해 접힘/펼침 기능이 구현됩니다.<br><br>
                        목차는 아래와 같이 생성 됩니다.<br>
                        순서 없는 목차 어쩌구 저쩌구 질문
                    </p>
                </div>
                <!--// 본문 제목, 내용 -->
                <div>
                    <div class="text-right">
                        <i class="fa fa-thumbs-o-up"><span class="like-count">(30)</span></i>
                        <i class="fa fa-share-alt"><span class="claim-count">(0)</span></i>
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn btn-primary btn-sm">수정</button>
                        <button type="button" class="btn btn-primary btn-sm">삭제</button>
                        <button type="button" class="btn btn-primary btn-sm">목록</button>
                    </div>
                </div>
            </div>

            <!-- 댓글작성 Bootstrap Live Editor -->
            <div class="modal-body" id="askEdit">

            </div>
            <!--// 댓글작성 Bootstrap Live Editor -->

            <div class="text-center">
                <button type="button" class="btn btn-primary btn-default">저장</button>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function() {
            var askEdit = document.getElementById("askEdit");
            $.sonEdit(askEdit);
        });
    </script>
</body>
</html>

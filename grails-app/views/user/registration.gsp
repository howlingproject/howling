<div class="container">
    <h3 class="page-header">회원 가입 </h3>
    <!-- form start -->
    <form class="form-horizontal well" role="form" method="post">

        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">이메일</label>

            <div class="col-sm-5 col-md-5">
                <input type="email" class="form-control" id="inputEmail3" placeholder="Email"/>
            </div>

            <div class="col-sm-5 col-md-5">
                <label class="control-label error-label">이메일을 올바르게 입력해주세요.</label>
            </div>
        </div>
        <div class="form-group">
            <label for="nickname" class="col-sm-2 control-label">닉네임</label>

            <div class="col-sm-5 col-md-5">
                <input type="nickname" class="form-control" id="nickname" placeholder="Nickname"/>
            </div>
            <div class="col-sm-5 col-md-5">
                <label class="control-label error-label hide">닉네임을 입력해주세요.</label>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword1" class="col-sm-2 control-label">비밀번호</label>

            <div class="col-sm-5 col-md-5">
                <input type="password" class="form-control" id="inputPassword1" placeholder="Password"/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword2" class="col-sm-2 control-label">비밀번호 확인</label>

            <div class="col-sm-5 col-md-5">
                <input type="password" class="form-control" id="inputPassword2" placeholder="Password"/>
            </div>
        </div>
        <div class="form-group">
            <label for="homepage" class="col-sm-2 control-label">홈페이지</label>

            <div class="col-sm-5 col-md-5">
                <input type="text" class="form-control" id="homepage" placeholder="Homepage"/>
            </div>
        </div>

        <div class="form-group">
            <label for="profile_image" class="col-sm-2 control-label">이미지</label>

            <div class="col-sm-5 col-md-5">
                <input type="file" id="profile_image"/>
            </div>
        </div>

        <div class="form-group">
            <label for="interesting" class="col-sm-2 control-label">관심 분야</label>

            <div class="col-sm-5 col-md-5">
                <div id="tag-info" class="form-inline">
                    <input type="text" class="form-control" id="interesting" placeholder="Interestring">
                    <button class="btn" type="button">Add <i class="glyphicon glyphicon-plus"></i></button>
                </div>
                <ul id="tag-cloud" style="padding-left: 0px; width:100%;"></ul>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-12 text-center">
                <button type="button" class="btn btn-info">가입 신청</button>
                <button type="button" class="btn btn-default">메인으로</button>
            </div>
        </div>
    </form>
    <!--/form-->
</div>

<div class="container">
    <form role="form">
        <div class="form-group">
            <label for="space_title">space title</label>
            <input type="text" class="form-control" id="space_title" placeholder="이미 생성된 공간 선택 가능하도록 셀렉트 박스로 (입력은 못함)">
        </div>
        <div class="form-group">
            <label for="title">title</label>
            <input type="text" class="form-control" id="title" placeholder="">
        </div>

        <!-- 에디터 -->
        <div class="form-group">
            <div id="edit"></div>
        </div>
        <!--// 에디터 -->

        <div class="form-inline" id="tag-info">
            <label for="keyword" class="sr-only">키워드</label>
            <input type="te xt" class="form-control" id="keyword" style="width: 30%;" placeholder="키워드를 입력하세요. (최대 5개)">
            <button type="button" class="btn btn-primary btn-sm">키워드추가 <i class="glyphicon glyphicon-plus"></i></button>
            <ul id="tag-cloud" style="padding-left: 0px; width:100%;"></ul>
        </div>
        <br>
        <div class="form-group">
            <div class="form-inline col-md-pull-10">
                <input id="file-attachment" type="file" style="display:none">
                <input id="fileAttachmentInput" class="form-control" type="text"placeholder="공간을 표현할 수 있는 대표 이미지를 등록하세요.">
                <button class="btn btn-info btn-default" type="button" onclick="$('input[id=file-attachment]').click();">파일선택
                </button>
                <p class="help-block"></p>
            </div>
        </div>

    </form>
    <div class="col-md12 text-center">
        <button type="button" class="btn btn-primary btn-lg">저장</button>
        <button type="button" class="btn btn-primary btn-lg">취소</button>
    </div>

</div>

<g:javascript src="bootstrap-tag-cloud/bootstrap-tag-cloud.js" />
<link type="stylesheet" href="${resource(dir: 'css/bootstrap-tag-cloud', file: 'bootstrap-tag-cloud.css')}" />
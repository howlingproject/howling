<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title">위키 생성하기</h4>
</div>
<div class="modal-body">
    <form role="form">
        <div class="form-group">
            <label for="space_title">space title</label>
            <input type="text" style="width: 100%;" class="form-control" id="space_title" placeholder="이미 생성된 공간 선택 가능하도록 셀렉트 박스로 (입력은 못함)">
        </div>
        <div class="form-group">
            <label for="title">title</label>
            <input type="text" style="width: 100%;" class="form-control" id="title" placeholder="">
        </div>

        <!-- 에디터 -->
        <div class="form-group">
            <div id="editor" class="form-group"></div>
        </div>
        <!--// 에디터 -->

        <div class="form-inline" id="tag-info">
            <label for="keyword" class="sr-only">키워드</label>
            <input type="text" class="form-control" id="keyword" style="width: 50%;" placeholder="키워드를 입력하세요. (최대 5개)">
            <button type="button" class="btn btn-primary btn-sm">키워드추가 <i class="glyphicon glyphicon-plus"></i></button>
            <ul id="tag-cloud" style="padding-left: 0px; width:100%;"></ul>
        </div>
        <br>
        <div class="form-group">
            <div class="form-inline col-md-pull-10">
                <input id="file-attachment" type="file" style="display:none">
                <input id="fileAttachmentInput" class="form-control" type="text" style="width: 50%;" placeholder="공간을 표현할 수 있는 대표 이미지를 등록하세요.">
                <button class="btn btn-info btn-default" type="button" onclick="$('input[id=file-attachment]').click();">파일선택
                </button>
                <p class="help-block"></p>
            </div>
        </div>

    </form>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
    <button type="button" class="btn btn-primary">저장</button>
</div>

<g:javascript src="bootstrap-tag-cloud/bootstrap-tag-cloud.js" />
<link type="stylesheet" href="${resource(dir: 'css/bootstrap-tag-cloud', file: 'bootstrap-tag-cloud.css')}" />


<script type='text/javascript' src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type='text/javascript' src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<link href="<g:resource dir="css" file="sonjs/sonjs.css" />" type="text/css" rel="stylesheet" media="screen, projection" />
<g:javascript src="sonjs/fn-son-markup.js"/>

<script type="text/javascript">
    $(document).ready(function() {
        SONJS.setting('${request.contextPath}',$("#editor"),'','100%');
    });
</script>
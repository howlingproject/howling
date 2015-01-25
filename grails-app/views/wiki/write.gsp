<div class="modal-body">
    <form role="form" id="wikiForm">
        <div class="form-horizontal">
            <div class="form-group">
                <label for="space_title" class="col-sm-2 control-label">공간제목</label>
                <div class="col-sm-10">
                    <input type="text"  class="form-control" id="space_title" placeholder="이미 생성된 공간 선택 가능하도록 셀렉트 박스로 (입력은 못함)">
                </div>
            </div>
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">위키제목</label>
                <div class="col-sm-10">
                    <input type="text"  class="form-control" id="title" name="title" placeholder="">
                </div>
            </div>

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
    <button type="button" class="btn btn-primary" id="saveWiki">저장</button>
</div>

<link href="${resource(dir: 'css/DualEditor', file: 'DualEditor.css')}" rel="stylesheet">
<g:javascript src="DualEditor/DualEditor-core.js"/>

<script type="text/javascript">
    $(document).ready(function() {
        DualEditor.setting('${request.contextPath}',$("#editor"),'','100%');
    });

    $("#saveWiki").on("click", function(e){
        Wiki.save();
    });

    var Wiki = {

        save:function(){
            var data = $("#wikiForm").serialize()
            data = data.replace("we_wiki_text","contentsMarkup");
            data += "&contents="+encodeURIComponent($("#wikimaincol").html());
            jQuery.ajax({
                type:'POST',
                data:data,
                url:'/howling/wiki/save',
                success:function(data,textStatus){
                    Wiki.saveComplete(data);
                },
                error:function(XMLHttpRequest,textStatus,errorThrown){}});
            return false;
        },

        saveComplete: function () {
            $('#writeModal').modal('hide');
            alert("저장을 완료했습니다.");
        },

        renderList: function() {
            $.ajax({
                url: '/howling/wiki/allList',
                failure: function(){ },
                success: function(response) {
                    $('#feedListArea').html(response);
                }
            });
        }
    }

</script>
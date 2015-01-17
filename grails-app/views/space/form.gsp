<!-- contents -->
<div class="container">
    <section id="forms">

        <div class="page-header">
            <h2>공간 생성하기</h2>
        </div>

        <div class="row" style="width:100%">
            <div style="padding-left:30px">
                <!-- <h3>Form Horizontal</h3> -->

                <g:formRemote url="[controller: 'space', action: 'save']" before="if(!checkValidation()) return false;" name="spaceCreateForm" onSuccess="saveComplete(data)" class="form-horizontal well" enctype="multipart/form-data">
                    <fieldset>
                        <legend>공간 제목</legend>
                        <div class="control-group">
                            <div class="controls">
                                <input type="text" class="form-control input-xlarge" id="title" name="title">
                                <p class="help-block">공간 제목 입력 후 Tab 이동시 공간명 중복 검사를 합니다.</p>
                            </div>
                        </div>
                        <p style="padding-top:20px"></p>
                        <legend>공간 이미지</legend>
                        <div class="control-group">

                            <div class="col-lg-8">
                                <div class="col-xs-8 col-md-8">
                                    <input name="userId" id="userId" value="1" type="hidden">
                                    <input name="uploadType" value="Space" type="hidden">
                                    <input name="titleImagePath" id="titleImagePath" type="hidden">
                                    <input id="file-attachment" name="uploadField" type="file" style="display:none">
                                    <input id="fileAttachmentInput" class="form-control" type="text"
                                           placeholder="공간을 표현할 수 있는 대표 이미지를 등록하세요." name="titleImage">
                                </div>
                                <div>
                                    <button class="btn btn-info btn-default" type="button"
                                            onclick="$('input[id=file-attachment]').click();">파일선택
                                    </button>
                                    <button class="btn btn-info btn-default" id="preUpload" type="button">업로드 및 미리보기</button>
                                    <p class="help-block"></p>
                                </div>
                            </div>

                            <div class="col-lg-4 text-right" id="imagePreviewArea">
                                <img src="../images/icons/pictures.png" width="200" alt="이미지 미리보기" class="img-thumbnail image-preview" id="image-preview">
                            </div>
                        </div>
                        <p style="padding-top:20px"></p>
                        <legend>공간 설명</legend>
                        <div class="control-group">
                            <div class="modal-body" id="askEdit">
                                <p class="help-block" name="description">공간 메인 화면에 입력한 설명이 display 됩니다. (markdown 지원) </p>
                                <g:textArea name="description" id="description" value="" rows="10" cols="140"/>
                                <input type="hidden" value="descriptionMarkup markup field" id="descriptionMarkup" name="descriptionMarkup">
                            </div>
                        </div>

                        <p style="padding-top:20px"></p>
                        <legend>공개 여부</legend>
                        <div class="control-group">
                            <div class="controls">
                                <label class="checkbox-inline">
                                    <input type="radio" name="isPrivate" id="inlineCheckbox1" value="Y" checked> 공개
                                </label>
                                <label class="checkbox-inline">
                                    <input type="radio" name="isPrivate" id="inlineCheckbox2" value="N"> 비공개
                                </label>

                            </div>
                        </div>
                        <p style="padding-top:20px"></p>
                        <legend>레이아웃</legend>
                        <div class="control-group">

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="panel panel-info">
                                        <div class="panel-heading"><input type="radio" name="layoutType" id="layoutTypeDefault" value="DEFAULT" checked> 기본형</div>
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
                                        <div class="panel-heading"><input type="radio" name="layoutType" id="layoutTypeLeft" value="LEFT"> 좌측 메뉴</div>
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
                                        <div class="panel-heading"><input type="radio" name="layoutType" id="layoutTypeRight" value="RIGHT"> 우측 메뉴</div>
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
                            <div class="col-sm-4 col-md-4">

                                <div id="tag-info" class="form-inline" style="padding-bottom: 10px">
                                    <input type="text" class="form-control" size="29" id="interesting" placeholder="Keyword">
                                    <input type="hidden" id="keywordArray" name="keywordList" />
                                    <button class="btn btn-primary" type="button" id="keywordAdd">Add <i class="glyphicon glyphicon-plus"></i></button>

                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4">
                                <ul id="tag-cloud" style="padding-left: 0px; width:100%; " ></ul>
                            </div>
                        </div>
                    </fieldset>

                    <div class="form-actions text-center">
                        <button type="submit" class="btn btn-primary">저장</button>
                        <button type="reset" class="btn">취소</button>
                    </div>
                </g:formRemote>
            </div>
        </div>

    </section>
</div>


<!--// contents -->
<link href="../css/bootstrap-tag-cloud/bootstrap-tag-cloud.css" rel="stylesheet">
<script type='text/javascript' src="../js/bootstrap-tag-cloud/bootstrap-tag-cloud.js"></script>

<script type="text/javascript">
    var keywordData = [];

    $('input[id="file-attachment"]').change(function () {
        $('#fileAttachmentInput').val($(this).val().replace('C:\\fakepath\\', ''));
    });

    /**
     * 키워드 추가
     */
     $('#keywordAdd').click(function(){
         var keyword = $('#interesting').val();
         alert('keywordData.length : ' + keywordData.length);
         if (keyword == '' || keyword.length < 2) {
             alert('키워드를 입력하세요.');
             return;
         }
         if (keywordData.length == 3) {
             alert('키워드는 최대 3건만 등록할 수 있습니다.');
             return;
         }

         keywordData.push(keyword);
         $('input[id=keywordArray]').val(keywordData.join(","));

         var arrays = $('#keywordArray').val();

         alert('arrays :' + arrays);
    });


    /**
     * 키워드 삭제
     */
    $('#tag-cloud').on('click', 'li', function (event) {
        alert('1 :' + $(event.target).text());
        var keyword = $(event.target).text();
        var index = keywordData.indexOf(keyword);
        alert('index : ' + index);
        if (index > -1) {
            keywordData.splice(index, 1);
            $('input[id=keywordArray]').val(keywordData);
        }

    });


    /**
     * 이미지 업로드 및 미리보기
     */
    $('#preUpload').click(function(){
        var oData = new FormData(document.forms.namedItem("spaceCreateForm"));
        var url="${createLink(controller:'uploadAjax',action:'upload')}";
        $.ajax({
            url:url,
            type:'POST',
            data:oData,
            processData: false,  // tell jQuery not to process the data
            contentType: false ,
            success:function (req) {
                if (req.success) {
                    alert(req.contextPath+req.imagePath+req.docName);
                    var titleImagePath = req.contextPath+req.imagePath;
                    var imagePath = titleImagePath+req.docName;
                    $("#image-preview").remove();
                    $("#imagePreviewArea").html("<img src='"+imagePath+"' width=\"200\" alt=\"이미지 미리보기\" class=\"img-thumbnail image-preview\" id=\"image-preview\">");
                    $("#titleImagePath").val(titleImagePath);
                } else {
                    alert(req.message);
                    return;
                }
            }
        });
    });

    /**
     * Form value 검증
     */
    function checkValidation() {
        // 에러가 발생할 경우 false 를 리턴한다.
        var userId = $("#userId").val();
        var title = $("#title").val();
        var titleImage= $("#fileAttachmentInput").val();
        var imagePath = $("#titleImagePath").val();
        var description = $("#description").val();

        $('input[id=keywordArray]').val(keywordData);
        var keys = $("#keywordArray").val();
        alert('저장 keys: ' + keys);
        if (userId == null || userId.length == 0) {
            alert('로그인 정보가 존재 하지 않습니다.')
            return false;
        }
        if (title == null || title.length == 0) {
            alert('제목을 입력하세요.')
            return false;
        }
        if (titleImage == null || titleImage.length == 0) {
            alert('공간 이미지를 업로드 하세요.')
            return false;
        }
        if (imagePath == null || imagePath.length == 0) {
            alert('이미지 업로드 정보는 필수값입니다.')
            return false;
        }
        if (description == null || description.length == 0) {
            alert('공간 설명은 필수값입니다.')
            return false;
        }
        if (keywordArray == null ) {
            alert('키워드는 최소 1건 등록해야 합니다.');
            return;
        }

        return true;
    }

    /**
     * 공간 저장 완료 콜백
     * @param data
     */
    function saveComplete(data) {
        alert('Data : ' + data);
        alert('Data.success : ' + data.success);
        if (data.success) {
            alert('공간이 생성되었습니다.');
            $(location).attr('href', "main");
        } else {
            alert(data.message);
        }
    }
</script>

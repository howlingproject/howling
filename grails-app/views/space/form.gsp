<!-- contents -->
<div class="container">
    <section id="forms">

        <div class="page-header">
            <h2>공간 생성하기</h2>
        </div>

        <div class="row" style="width:100%">
            <div style="padding-left:30px">
                <!-- <h3>Form Horizontal</h3> -->

                <g:formRemote url="[controller: 'space', action: 'save']" name="spaceCreateForm" onSuccess="saveComplete(data)" class="form-horizontal well">
                    <fieldset>
                        <legend>공간 제목</legend>
                        <div class="control-group">
                            <div class="controls">
                                <input type="text" class="form-control input-xlarge" id="input01" name="title">
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
                                           placeholder="공간을 표현할 수 있는 대표 이미지를 등록하세요." name="titleImage">
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
                                <p class="help-block" name="description">공간 메인 화면에 입력한 설명이 display 됩니다. (markdown 지원) </p>
                            </div>
                        </div>

                        <p style="padding-top:20px"></p>
                        <legend>공개 여부</legend>
                        <div class="control-group">
                            <div class="controls">
                                <label class="checkbox-inline">
                                    <input type="radio" name="isPrivate" id="inlineCheckbox1" value="Y"> 공개
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
                                        <div class="panel-heading"><input type="radio" name="layoutType" id="layoutTypeDefault" value="DEFAULT"> 기본형</div>
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
                            <div class="col-sm-5 col-md-5">
                                <div id="tag-info" class="form-inline" style="padding-bottom: 10px">
                                    <input type="text" class="form-control" id="interesting" placeholder="Keyword">
                                    <button class="btn" type="button">Add <i class="glyphicon glyphicon-plus"></i></button>
                                </div>

                                <ul id="tag-cloud" style="padding-left: 0px; width:100%;"></ul>
                            </div>

                        </div>
                    </fieldset>

                    <div class="form-actions text-center">
                        <button type="submit" class="btn btn-primary">Save changes</button>
                        <button type="reset" class="btn">Cancel</button>
                    </div>
                </g:formRemote>
            </div>



        </div>

    </section>
</div>
<!--// contents -->


<script type="text/javascript">
    /**
     * 공간 저장 완료 콜백
     * @param data
     */
    function saveComplete(data) {
        alert('Data : ' + data);
        alert(data.success);
    }

</script>


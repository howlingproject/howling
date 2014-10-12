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

        <div class="form-inline">
            <label for="keyword" class="sr-only">키워드</label>
            <input type="text" class="form-control" id="keyword" style="width: 30%;" placeholder="키워드를 입력하세요. (최대 5개)">
            <button type="button" class="btn btn-primary btn-sm">키워드추가</button>

            <button type="button" class="btn btn-default btn-sm">
                JAVA <a href="#"><i class="fa fa-times"></i></a>
            </button>
            <button type="button" class="btn btn-default btn-sm">
                Spring <a href="#"><i class="fa fa-times"></i></a>
            </button>
            <button type="button" class="btn btn-default btn-sm">
                Ubuntu <a href="#"><i class="fa fa-times"></i></a>
            </button>

        </div>
        <br>
        <div class="form-group">
            <label for="file" class="sr-only">파일첨부</label>
            <input type="file" class="form-control" id="file" placeholder="파일 첨부 (최대 3개) ">
        </div>

    </form>
    <div class="col-md12 text-center">
        <button type="button" class="btn btn-primary btn-lg">저장</button>
        <button type="button" class="btn btn-primary btn-lg">취소</button>
    </div>

</div>
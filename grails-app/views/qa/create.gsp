<div class="container">
	<form role="form" name="form">
		<div class="form-group">
			<label for="title">title</label>
			<input type="text" class="form-control" id="title" name="title" placeholder="">
		</div>

		<!-- 에디터 -->
		<div id="editor" class="form-group"></div>
		<input type="text" name="contents">
		<!--// 에디터 -->

		<div class="form-inline">
			<label for="keyword" class="sr-only">키워드</label>
			<input type="text" class="form-control" id="keyword" style="width: 30%;" placeholder="키워드를 입력하세요. (최대 5개)">
			<button type="button" class="btn btn-primary btn-sm">키워드추가</button>

			<button type="button" class="btn btn-default btn-sm">
				JAVA <a href="#"><i class="fa fa-times"></i></a>
				<input type="hidden" name="keywords[0].keywordName" value="JAVA">
			</button>
			<button type="button" class="btn btn-default btn-sm">
				Spring <a href="#"><i class="fa fa-times"></i></a>
				<input type="hidden" name="keywords[1].keywordName" value="Spring">
			</button>
			<button type="button" class="btn btn-default btn-sm">
				Ubuntu <a href="#"><i class="fa fa-times"></i></a>
				<input type="hidden" name="keywords[2].keywordName" value="Ubuntu">
			</button>

		</div>
		<br>
		<div class="form-group">
			<label for="file" class="sr-only">파일첨부</label>
			<input type="file" class="form-control" id="file" placeholder="파일 첨부 (최대 3개) ">
		</div>

		<input type="hidden" name="qaId">
		<input type="hidden" name="wikiId">
	</form>
	<div class="col-md12 text-center">
		<button type="button" class="btn btn-primary btn-lg" name="create">저장</button>
		<button type="button" class="btn btn-primary btn-lg">취소</button>
	</div>
</div>

<g:javascript src="sonjs/fn-son-markup.js"/>

<script>
	$(document).ready(function(){
		$('[name=create]').bind('click', save);
        SONJS.setting($("#editor"));
	});

	function save(){
		$.ajax({
			url : '/howling/qa/save',
			type : 'post',
			data : $('[name=form]').serialize(),
			success : function(t){
				alert(t.success);
			},
			error : function(t){
				alert(t.success);
			}
		});
	}
</script>
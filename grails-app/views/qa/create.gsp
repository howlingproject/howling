<div class="container">
	<form role="form" name="form">
		<div class="form-group">
			<label for="title">title</label>
			<input type="text" class="form-control" id="title" name="title" placeholder="">
		</div>

		<!-- 에디터 -->
		<div id="editor" class="form-group">
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

		<input type="hidden" name="qaId">
		<input type="hidden" name="wikiId">
	</form>
	<div class="col-md12 text-center">
		<button type="button" class="btn btn-primary btn-lg" name="create">저장</button>
		<button type="button" class="btn btn-primary btn-lg">취소</button>
	</div>
</div>



<script type='text/javascript' src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type='text/javascript' src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>

<link href="<g:resource dir="css" file="sonjs/sonjs.css" />" type="text/css" rel="stylesheet" media="screen, projection" />
<g:javascript src="sonjs/fn-son-markup.js"/>

<script>
	$(document).ready(function(){
		$('[name=create]').bind('click', save);
        SONJS.setting('${request.contextPath}',$("#editor"));
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
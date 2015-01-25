<div class="container">

	<g:formRemote url="[controller: 'qa', action: 'save']" name="form" before="setParam()" onSuccess="saveComplete(data)" enctype="multipart/form-data">
	%{--<form role="form" id="form" name="form">--}%
		<fieldset>
		<div class="form-group">
			<label for="title">질문하기</label>
			<input type="text" class="form-control" id="title" name="title" placeholder="">
		</div>

		<!-- 에디터 -->
		<div id="editor" class="form-group"></div>
		<!--// 에디터 -->
		<div class="form-group">
			<div class="col-md-pull-4">
				<div class="form-inline" id="tag-info">
					<input type="text" class="form-control" size="29" id="interesting" placeholder="Keyword">
					<button type="button" class="btn btn-primary" id="keywordAdd">Add <i class="glyphicon glyphicon-plus"></i></button>
				</div>
			</div>
			<div class="col-md-8">
				<ul id="tag-cloud" style="padding-left: 0px; width:100%;"></ul>
			</div>
		</div>
		<input type="hidden" id="keywordArray" name="keywordList" />
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
			<div class="form-inline col-md-pull-10">
				<input name="uploadType" value="Qa" type="hidden">
				<input id="file-attachment" name="uploadField" type="file" style="display:none">
				<input id="fileAttachmentInput" class="form-control" type="text" style="width: 50%;" placeholder="파일 첨부 (최대 3개)">
				<button class="btn btn-info btn-default" type="button" onclick="$('input[id=file-attachment]').click();">파일선택</button>
				<button class="btn btn-info btn-default" id="preUpload" type="button">업로드 및 미리보기</button>
				<p class="help-block"></p>
			</div>
		</div>

		<input type="hidden" name="qaId">
		<input type="hidden" name="wikiId">
	%{--</form>--}%
	<div class="col-md12 text-center">
		<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
		<button type="submit" class="btn btn-primary">저장</button>
	</div>
	</fieldset>
	</g:formRemote>

</div>

<link href="../css/bootstrap-tag-cloud/bootstrap-tag-cloud.css" rel="stylesheet">
<script type='text/javascript' src="../js/bootstrap-tag-cloud/bootstrap-tag-cloud.js"></script>

<link href="${resource(dir: 'css/DualEditor', file: 'DualEditor.css')}" rel="stylesheet">
<g:javascript src="DualEditor/DualEditor-core.js"/>

<script>
	var keywordData = [];

	$(document).ready(function(){
		DualEditor.setting('${request.contextPath}',$("#editor"));
	});

	$('input[id="file-attachment"]').change(function () {
		$('#fileAttachmentInput').val($(this).val().replace('C:\\fakepath\\', ''));
	});

	/**
	 * 이미지 업로드 및 미리보기
	 */
	$('#preUpload').click(function(){
		var oData = new FormData(document.forms.namedItem("form"));
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
					var imagePath = req.contextPath+req.imagePath+req.docName;
					$("#image-preview").remove();
					$("#imagePreviewArea").html("<img src='"+imagePath+"' width=\"200\" alt=\"이미지 미리보기\" class=\"img-thumbnail image-preview\" id=\"image-preview\">");
				} else {
					alert(req.message);
					return;
				}
			}
		});
	});

	/**
	 * 에디터 파라미터명 이슈로 인한 임시 파라미터 세팅
	 * @param data
	 */
	function setParam(){
		$('#form').append('<textarea name="contents" style="display:none">'+$('#wikiEditor').val()+'</textarea>');
		$('#form').append('<textarea name="contentsMarkup" style="display:none">'+$('#wikimaincol').html()+'</textarea>');
	}

	/**
	 * 공간 저장 완료 콜백
	 * @param data
	 */
	function saveComplete(data) {
		if(data.success) {
			location.href = "/howling/qa/view?qaId=" + data.qaId;
		} else {
			alert(data.message)
		}
	}

	/**
	 * 키워드 추가
	 * 키워드가 3건 이상 등록 될 경우 폼을 disabled 한다.
	 */
	$('#keywordAdd').click(function(){
		var keyword = $('#interesting').val();
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

		if (keywordData.length > 2) {
			$("#interesting").attr("readonly",true);
			$("#keywordAdd").attr("disabled",true);
		}
	});

	/**
	 * 키워드 삭제
	 * 키워드가 삭제되면 폼을 enabled 한다.
	 */
	$('#tag-cloud').on('click', 'li', function (event) {
		var keyword = $(event.target).text();
		var index = keywordData.indexOf(keyword);

		if (index > -1) {
			keywordData.splice(index, 1);
			$('input[id=keywordArray]').val(keywordData);
			$("#interesting").attr("readonly",false);
			$("#keywordAdd").attr("disabled",false);
		}
	});
</script>
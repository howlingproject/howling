<%--
  Created by IntelliJ IDEA.
  User: yion
  Date: 2014. 12. 7.
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<h2>image upload</h2>
<g:form enctype="multipart/form-data" class="upload" name="imageForm">
    <label>File Name </label><input name="fileTextField" type="text">
    <input name="uploadField" type="file">
    <input name="userId" value="1" type="hidden">
    <input name="viewType" value="Space" type="hidden">
    <input name="uploadType" value="image" type="hidden">
    <input id="imageSubmit" value="submit" type="button">

    <div id="imgArea"></div>
</g:form>

<br />
<h2>file uplaod</h2>
<g:form enctype="multipart/form-data" class="upload" name="fileForm">
    <label>File Name </label><input name="fileTextField" type="text">
    <input name="uploadField" type="file">
    <input name="userId" value="1" type="hidden">
    <input name="viewType" value="Space" type="hidden">
    <input name="uploadType" value="file" type="hidden">

    <input id="fileSubmit" value="submit" type="button">
    <div id="fileArea"></div>
</g:form>

<script type="text/javascript">
    $('#imageSubmit').click(function(){
        doUpload(new FormData(document.forms.namedItem("imageForm")));
    });

    $('#fileSubmit').click(function(){
        doUpload(new FormData(document.forms.namedItem("fileForm")));
    });

    function doUpload(oData) {
        var url = "${createLink(controller:'uploadAjax',action:'upload')}";
        $.ajax({
            url: url,
            type: 'POST',
            data: oData,
            processData: false,  // tell jQuery not to process the data
            contentType: false,
            success: function (req) {
                if(!req.success) {
                    alert(req.message);
                    return;
                }
                if (req.uploadType == 'image') {
                    $("#imgArea").html("<img src='" + req.contextPath + req.filePath + req.savedName + "' id=\"uploadPreviewImg\" width=\"200\">");
                } else {
                    $("#fileArea").html("<a href="+ req.contextPath + req.filePath + req.savedName+ " target='_blank'>"+ req.realName +"</a>");
                }
            }
        });
    }
</script>

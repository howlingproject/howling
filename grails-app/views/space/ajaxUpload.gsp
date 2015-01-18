<%--
  Created by IntelliJ IDEA.
  User: yion
  Date: 2014. 12. 7.
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<g:form enctype="multipart/form-data" class="upload" name="fileinfo">
    <label>File Name </label><input name="fileTextField" type="text">
    <input name="uploadField" type="file">
    <input name="userId" value="1" type="hidden">
    <input name="viewType" value="Space" type="hidden">
    <input name="uploadType" value="image" type="hidden">
    <input class="clickClass" value="submit" type="button">

    <div class="col-lg-4" id="imgArea">

    </div>

</g:form>
<script type="text/javascript">
    $('.clickClass').click(function(){
        var oData = new FormData(document.forms.namedItem("fileinfo"));
        var url="${createLink(controller:'uploadAjax',action:'upload')}";
        $.ajax({
            url:url,
            type:'POST',
            data:oData,
            processData: false,  // tell jQuery not to process the data
            contentType: false ,
            success:function (req) {
                alert(req.contextPath+req.imagePath+req.docName);
                $("#imgArea").html("<img src='"+req.contextPath+req.filePath+req.savedName+"' id=\"uploadPreviewImg\" width=\"200\">");
            }
        });
    });

</script>

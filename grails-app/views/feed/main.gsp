<div class="container">
    <div class="col-md-12 col-xs-12" id="feed-area">
        <!-- feed 글 쓰기 start -->
        <g:formRemote name="feedForm" id="feedForm" class="form-horizontal attachmentForm" url="[controller: 'feed', action: 'save']"
                        before="if(!Feed.checkValidate()) return false;"
                        onSuccess="Feed.completeSave(data)">
            <div class="feed feed-write well">
                <div class="feed-write-top">
                    <div class="action-buttons text-right">
                        <button class="btn btn-primary" type="button" data-toggle="modal" id="feedAttachment" data-target="#fileUploadModal">파일첨부</button>
                    </div>
                </div>
                <ul>
                    <li>
                        <div class="author">
                            <div class="user-profile">
                                <g:img dir="images" file="avatar.png" alt="avatar" class="profile-image" />
                            </div>
                        </div>
                        <div class="write-box">
                            <textarea class="form-control" name="feedContent" id="feedContent" rows="6" placeholder="Feed를 등록해주세요!"></textarea>
                        </div>
                        <div class="attachmentArea">
                            <div class="images text-left"></div>
                            <div class="files">%{--<a href="#"><i class="fa fa-file-o"></i> 첨부파일.zip</a>--}%</div>
                        </div>
                    </li>
                </ul>
                <div class="feed-write-bottom text-right">
                    <button class="btn btn-info" type="submit" id="saveFeed">저장</button>
                </div>
            </div>
        </g:formRemote>
        <!-- feed 글 쓰기 end -->

        <!-- feed 글 목록 start -->
        <div id="feedListArea"></div>
        <!-- feed 글 목록 end -->

        <div id="right-panel-container">
            <a id="right-panel-link" href="#right-panel"><i class="fa fa-bars fa-3x"></i></a>
        </div>
    </div>
</div>

<div id="right-panel" class="right-panel">
    <div class="panel panel-default panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">이달의 Best Feed</h3>
        </div>
        <div class="panel-body best-feed">
            <ul class="media-list">
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
                <li class="media">
                    <a href="#" class="pull-left">
                        <div class="author">
                            <div class="user-profile-sm">
                                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
                            </div>
                        </div>
                    </a>

                    <div class="media-body" data-toggle="modal" data-target="#bestFeedModal">
                        <p>첫번째 타임라인 어쩌구 저쭈구 해서.... &nbsp;<span class="badge">30</span></p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>

<!-- best feed modal start -->
<div class="modal fade" id="bestFeedModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">FEED 제목</h4>
            </div>
            <div class="modal-body">
                <div class="feed well">
                    <ul>
                        <li class="thread">
                            <div class="author">
                                <div class="user-profile">
                                    <g:img dir="images" file="avatar.png" alt="avatar" class="profile-image" />
                                </div>
                            </div>
                            <div class="name">sjune</div>
                            <div class="date">2014.07.23 23:00</div>
                            <div class="config"><i class="fa fa-check popover-config" data-container="body" data-toggle="popover" data-placement="right"></i></div>
                            <div class="threaad-message-box">
                                <div class="message">
                                    객체지향 프로그래밍에 있어서 가장 중요한 개념 중 하나인 "캡슐화"에 대한 제 생각을 정리해 보았습니다. 어떻게 생각하시는지 많은 의견 부탁드립니다.
                                </div>
                                <div class="action-buttons">
                                    <i class="fa fa-thumbs-o-up"><span class="like-count">(30)</span></i>
                                    <i class="fa fa-bullhorn"><span class="claim-count">(0)</span></i>
                                </div>
                            </div>

                            <ul>
                                <li>
                                    <div class="author">
                                        <div class="user-profile-sm">
                                            <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                                        </div>
                                    </div>
                                    <div class="name">Yion Lee</div>
                                    <div class="date">2014.07.23 23:00</div>
                                    <div class="config">
                                        <i class="fa fa-check popover-config" data-container="body"
                                           data-toggle="popover" data-placement="right"></i>
                                    </div>
                                    <div class="message-box">
                                        <div class="message">
                                            좋은 글 잘 읽었습니다. 캡슐화에 대한 설명도 OOP에 입문하는 사람들이 이해하기 편하게 서술되어있구요. 다만 한가지 오해를 살 수 있는
                                            부분에
                                            대해서는 조금 짚고 넘어가겠습니다. 글 내용중 C언어의 구조체는 객체가 아니다, 왜냐하면 캡슐화를 할 수 없기때문이다라고 서술하셨는데
                                            이는
                                            C언어 =
                                            절차지향 언어다라는 고정관념으로 인한 다소의 오해의 여지는 있습니다. C언어로도 얼마든지 객체지향적인 프로그래밍이 가능합니다. 실제로
                                            커널
                                            소스를 보면
                                            C++에서 다형성을 구현하는 주요 원리인 가상함수가 구조체의 함수포인터로 구현되어있는 것을 볼 수 있습니다. 즉, 'OOP 그 자체는
                                            언어와는
                                            무관한
                                            개념'이라고 보는 게 맞습니다. 다만 일반적인 C프로그래밍을 할 때 객체지향으로 프로그래밍 하는 경우는 많지는 않겠죠..
                                        </div>
                                        <div class="action-buttons">
                                            <i class="fa fa-thumbs-o-up"><span class="like-count">(30)</span></i>
                                            <i class="fa fa-bullhorn"><span class="claim-count">(0)</span></i>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="author">
                                        <div class="user-profile-sm">
                                            <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                                        </div>
                                    </div>
                                    <div class="name">SON JS</div>
                                    <div class="date">2014.07.23 23:00</div>
                                    <div class="config"><i class="fa fa-check popover-config" data-container="body"
                                                           data-toggle="popover" data-placement="right"></i></div>
                                    <div class="message-box">
                                        <div class="message">
                                            저 동적 바인딩도 알려주시면 안됄까요? 너무 어려워서 그런데
                                        </div>
                                        <div class="action-buttons">
                                            <i class="fa fa-thumbs-o-up"><span class="like-count">(30)</span></i>
                                            <i class="fa fa-bullhorn"><span class="claim-count">(0)</span></i>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="author">
                                        <div class="user-profile-sm">
                                            <img alt="avatar" class="profile-image" src="../images/avatar.png" />
                                        </div>
                                    </div>
                                    <div class="name">용퓌</div>
                                    <div class="date">2014.07.23 23:00</div>
                                    <div class="config"><i class="fa fa-check popover-config" data-container="body"
                                                           data-toggle="popover" data-placement="right"></i></div>
                                    <div class="message-box">
                                        <div class="message">
                                            박지원 새정치민주연합 의원이 유병언 전 회장 변사체 발견 지점이 민가 인근임에도 개가 짖거나 까마귀가 오지 않았으며 사체 부패에 따른
                                            냄새도
                                            나지
                                            않았다는 내용이 담긴 주민 녹취록 등을 공개했습니다.
                                        </div>
                                        <div class="action-buttons">
                                            <i class="fa fa-thumbs-o-up"><span class="like-count">(30)</span></i>
                                            <i class="fa fa-bullhorn"><span class="claim-count">(0)</span></i>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- best feed modal end -->

<!-- file upload start -->
<div class="modal fade" id="fileUploadModal" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="fileUploadModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="fileUploadModalLabel">파일 첨부</h4>
            </div>
            <div class="modal-body">
                <div class="feed well">
                    <g:form enctype="multipart/form-data" class="form-horizontal attachmentForm" name="uploadForm" id="uploadForm">
                        <input type="hidden" name="uploadType" value="Feed">

                        <div class="form-group">
                            <label class="col-sm-2 col-md-2 control-label">타입</label>

                            <div class="col-sm-10 col-md-10">
                                <label class="radio-inline">
                                    <input type="radio" name="fileType" id="fileType1" value="file" checked="checked">
                                    파일
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="fileType" id="fileTyp2" value="image"> 이미지
                                </label>
                            </div>
                        </div>

                        <div class="form-group">
                            <input id="fileAttachment" name="uploadField" type="file" style="display:none">
                            <label for="fileAttachmentInput" class="col-sm-2 control-label">파일첨부</label>

                            <div class="col-sm-10 col-md-10">
                                <div class="row">
                                    <div class="col-sm-9 col-xs-9 col-md-9">
                                        <input id="fileAttachmentInput" class="form-control" type="text" placeholder="파일을 선택해주세요.">
                                    </div>
                                    <div class="col-sm-3 col-xs-3 col-md-3">
                                        <button class="btn btn-info btn-default" type="button" onclick="$('#fileAttachment').click();">파일선택</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group image-options">
                            <label class="col-sm-2 col-md-2 control-label">미리보기</label>
                            <div class="col-sm-10 col-md-10" id="imagePreviewArea">&nbsp;</div>
                        </div>
                    </g:form>

                    <script type="text/javascript">
                        $('input[name="fileType"]').change(function () {
                            if($(this).val() == 'file') {
                                $('.image-options').hide();
                            } else {
                                $('.image-options').show();
                            }
                        });
                    </script>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-info" type="button" id="confirmFileAttachment">확인</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>
<!-- file upload modal end -->

<script src="http://eduardomb.github.io/jquery-panelslider/jquery.panelslider.min.js"></script>
<script type="text/javascript">
    $('#right-panel-link').panelslider({side: 'right', clickClose: true, duration: 200 });

    var Feed = {
        tempAttachment : null,
        attachments : [],
        completeSave : function(res) {
            console.log(res);
            if(!res.success) {
                alert(res.message);
                return;
            }
            this.clearForm();
            this.renderList();
            this.clearAttachmentArea();
        },
        clearForm : function() {
            $('#feedForm').find('textarea').val('');
        },
        renderList: function() {
            $.ajax({
               url: '/howling/feed/list',
               failure: function(){ },
               success: function(response) {
                   $('#feedListArea').html(response);
               }
           });
        },
        hidePopover: function() {
            $('.feed-popover').popover('hide');
        },
        deleteById: function(id) {
            if(!confirm("삭제하시겠습니까?")) return;
            var me = this;
            $.ajax({
               url: '/howling/feed/delete?feedId=' + id,
               failure: function(){},
               success: function(response) {
                    if(!response.success) {
                        alert("Failed delete item.");
                        return;
                    }
                   me.hidePopover();
                   me.renderList();
               }
           });
        },
        saveReply: function(id) {
            var me = this;
            var $feedReply = $('#feedReply_' + id);
            if(!$feedReply.val().trim().length) {
                alert('댓글을 입력해주세요.');
                return;
            }

            $.ajax({
                url: '/howling/feedReply/save',
                method: 'POST',
                data: {
                    feedId: id,
                    feedReplyContent: $feedReply.val()
                },
                failure: function(){},
                success: function(response) {
                    if(!response.success) {
                        alert("Failed saveReply");
                        return;
                    }
                    me.renderList();
                }
           });
        },
        bindImageUpload: function() {
            $('#fileAttachment').change(function(){
                var oData = new FormData(document.forms.namedItem("uploadForm"));
                var url = "${createLink(controller:'uploadAjax',action:'upload')}";
                $.ajax({
                    url:url,
                    type:'POST',
                    data:oData,
                    processData: false,  // tell jQuery not to process the data
                    contentType: false ,
                    success:function (req) {
                        if(!req.success) {
                            alert(req.message);
                            return;
                        }
                        console.log(req);

                        var _attachment = {
                            'realName': req.realName,
                            'savedName': req.savedName,
                            'filePath': req.filePath,
                            'fileSize': req.fileSize,
                            'fileType': 'image',
                            'imagePath': req.contextPath + req.filePath + req.savedName
                        };

                        Feed.tempAttachment = _attachment;
                        var image = '<img src="' + _attachment.imagePath + '" alt="이미지 미리보기" class="img-thumbnail image-preview">';
                        $('#uploadForm #imagePreviewArea').html(image);
                        $('#uploadForm #fileAttachmentInput').val($('#fileAttachment').val());
                    }
                });
            });
        },
        bindConfirmFileAttachment: function() {
            $('#confirmFileAttachment').click(function(){
                $('#fileUploadModal').modal('hide');
                Feed.clearAttachmentArea();

                Feed.attachments.push(Feed.tempAttachment);
                Feed.tempAttachment = null;
                Feed.renderAttachments();
            });
        },
        renderAttachments: function() {
            Feed.clearAttachmentArea();
            $.each(Feed.attachments, function (i, obj) {
                if (obj.fileType == 'image') {
                    var image = '<img src="' + obj.imagePath + '" alt="이미지 미리보기" class="img-thumbnail image-preview">';
                    $('.attachmentArea .images').append(image);
                }
            });
        },
        clearAttachmentArea: function() {
            $('.attachmentArea .images').empty();
        },
        checkValidate: function() {
            if(!$('#feedContent').val().trim().length) {
                alert('feed를 입력해주세요!');
                return false;
            }

            $.each(Feed.attachments, function (idx, obj) {
                $('#feedForm').append('<input type="hidden" name="feedFiles['+ idx + '].realName" value="'+ obj.realName+'" />')
                    .append('<input type="hidden" name="feedFiles['+ idx + '].savedName" value="'+ obj.savedName+'" />')
                    .append('<input type="hidden" name="feedFiles['+ idx + '].filePath" value="'+ obj.filePath+'" />')
                    .append('<input type="hidden" name="feedFiles['+ idx + '].fileSize" value="'+ obj.fileSize+'" />')
                    .append('<input type="hidden" name="feedFiles['+ idx + '].fileType" value="'+ obj.fileType+'" />');
            });

            return true;
        },
        init : function() {
            this.bindImageUpload();
            this.bindConfirmFileAttachment();
            this.renderList();
        }
    };

    $(function(){
        Feed.init();
    });

</script>
<div id="imgArea"></div>

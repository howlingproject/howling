<g:each in="${renderQaList}" var="qaContent">
<div class="media qna-item">
    <a class="pull-left" href="#">
        <div class="user-profile">
            <img alt="avatar" class="profile-image" src="../images/avatar.png" />
        </div>
    </a>
    <div class="row">
        <div class="qna-main-top col-xs-8 col-sm-8 col-md-7 col-lg-8">
            <div class="media-body">
                <div class="media-heading">
                    <span>${qaContent.insertDate}</span>
                    <div class="pull-right">
                        <g:if test="!qaContent.keywordByQaId.IsEmpty()">
                            <g:each in="${qaContent.keywordByQaId}" var="keyword">
                                <span class="label label-primary">${keyword.keywordName}</span>
                            </g:each>
                        </g:if>
                    </div>
                </div>
                <div class="qna-title">
                    <span>${qaContent.title}</span>
                </div>
                ${qaContent.contents}
                <span class="badge">${qaContent.qaReplys.size()}</span>
            </div>
        </div>
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 my-qna-rating">
            <button class="btn btn-sm btn-default btn-sm-fixed">조회 ${qaContent.viewCount}</button>
            <button class="btn btn-sm btn-default btn-sm-fixed">추천 ${qaContent.recommandCount}</button>
        </div>
    </div>
</div>
</g:each>

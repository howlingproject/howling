<g:each in="${renderMyQaList}" var="qaContent">
    <div class="my-qna-item">
        <a class="pull-left" href="#">
            <div class="user-profile">
                <img alt="avatar" class="profile-image" src="../images/avatar.png"/>
            </div>
        </a>

        <div class="row">
            <div class="col-xs-9 col-sm-9 col-md-9 col-lg-10">
                <div class="media-body">
                    <div class="media-heading">
                        <span>${qaContent.insertDate}</span>
                        <span class="my-qna-writer">
                            <div class="user-profile-xs">
                                <span class="nickname">Yion</span>
                            </div>
                        </span>

                        <div class="pull-right">
                            <g:if test="!qaContent.keywordByQaId.IsEmpty()">
                                <g:each in="${qaContent.keywordByQaId}" var="keyword">
                                    <span class="label label-primary">${keyword.keywordName}</span>
                                </g:each>
                            </g:if>
                        </div>

                        <div class="qna-title">
                            <span>${qaContent.title}</span>
                        </div>

                        <div>
                            ${qaContent.contents}
                            <span class="badge">${qaContent.qaReplys.size()}</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 my-qna-rating pull-right">
                <button class="btn btn-sm btn-default btn-sm-fixed pull-right">조회 ${qaContent.viewCount}</button>
                <button class="btn btn-sm btn-default btn-sm-fixed pull-right">추천 ${qaContent.recommandCount}</button>
            </div>
        </div>
    </div>
</g:each>

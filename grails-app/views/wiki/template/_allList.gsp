<div class="nav-tabs-header">전체 위키</div>
<g:each in="${wikiList}" var="wiki">
<div class="media qna-item">
    <a class="pull-left" href="#">
        <div class="user-profile">
            <img src="../images/avatar.png" class="profile-image" alt="avatar">
        </div>
    </a>
    <div class="row">
        <div class="col-xs-6 col-sm-8 col-md-8">
            <div class="media-body">
                <div class="media-heading">
                    <span><g:formatDate format="yyyy-MM-dd HH:mm" date="${wiki.insertDate}"/></span>
                    <div class="pull-right">
                        <span class="label label-primary">Spring</span>
                        <span class="label label-primary">Spring</span>
                        <span class="label label-primary">Spring</span>
                        <span class="label label-primary">Spring</span>
                    </div>
                </div>
                <g:set var="contets" value="${wiki.contents.replaceAll("<.*?>","").replaceAll("<\\.*?>","")}" />
                <g:if test="${contets.length() <= 200}">
                    ${contets}
                </g:if>
                <g:else>
                    ${contets.substring(0,200)}...
                </g:else>
            </div>
        </div>
        <div class="col-md-2 my-qna-rating">
            <button class="btn btn-sm btn-default btn-sm-fixed">답변 999</button>
            <button class="btn btn-sm btn-default btn-sm-fixed">추천 0</button>
        </div>
    </div>
</div>
</g:each>
<div class="top-buffer">&nbsp;</div>
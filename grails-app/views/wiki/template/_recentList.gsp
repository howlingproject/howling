
<g:each in="${wikiList}" var="wiki">
    <!-- 최근 활동 -->
    <div class="best-qna-item">
        <div>
            <span class="label label-primary">Spring</span>
            <span class="label label-success">JAVA</span>
            <strong> ${wiki.title}</strong>
        </div>
        <div class="media">
            <a class="pull-left" href="#">
                <div class="user-profile">
                    <img src="../images/avatar.png" class="profile-image" alt="avatar">
                </div>
            </a>
            <div class="media-body">
                <g:set var="contets" value="${wiki.contents.replaceAll("<.*?>","").replaceAll("<\\.*?>","")}" />
                <g:if test="${contets.length() <= 50}">
                    ${contets}
                </g:if>
                <g:else>
                    ${contets.substring(0,50)}...
                </g:else>
            </div>
        </div>
    </div>
    <!-- 최근 활동 -->
</g:each>
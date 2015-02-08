
<g:each in="${wikiList}" var="wiki">
    <div class="row" style="padding-bottom: 10px;">
        <div class="col-md-1">
            <div class="user-profile">
                <img alt="avatar" class="profile-image" src="../images/avatar.png" />
            </div>
        </div>
        <div class="col-md-11">
            <div class="row">
                <div class="col-md-8">
                    ${wiki.userNick } <g:formatDate format="HH:mm" date="${wiki.insertDate}"/> 사람 ${wiki.likeCount}명 리플 0개
                </div>
                <div class="col-md-4 text-right">
                    페이시북 구플 트위트
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <g:set var="contets" value="${wiki.contents.replaceAll("<.*?>","").replaceAll("<\\.*?>","")}" />
                    <g:if test="${contets.length() <= 250}">
                        ${contets}
                    </g:if>
                    <g:else>
                        ${contets.substring(0,250)}...
                    </g:else>
                </div>
            </div>
        </div>
    </div>
</g:each>
<div class="media qna-item">
    <ul class="nav nav-pills nav-stacked cat-keyword">
        <li class="active" value="JAVA"><a href="#">JAVA(120/789)</a></li>
        <g:each in="${categorizeKeywordList}" var="keywordList">
            <li value="${keywordList.keywordName}"><a href="#">${keywordList.keywordName}(120/789)</a></li>
        </g:each>
    </ul>
</div>

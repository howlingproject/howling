<div class="feed well">
    <ul>
        <g:each in="${feedList}" status = "i" var="feed">
        <li class="thread">
            <div class="author">
                <div class="user-profile">
                    <g:img dir="images" file="avatar.png" alt="avatar" class="profile-image" />
                </div>
            </div>
            <div class="name">${feed.userNick}</div>
            <div class="date"><g:formatDate format="yyyy-MM-dd HH:mm" date="${feed.insertDate}"/></div>
            <div class="config">
                <i class="fa fa-check feed-popover"
                   data-container="body"
                   data-toggle="popover"
                   data-html="true"
                   data-content="<div id='popover-config-content'>
                        <div class='button modify'><a href='javascript:void(0)'>수정</a></div>
                        <div class='button delete'><a href='javascript:Feed.deleteById(${feed.feedId})'>삭제</a></div></div>"
                   data-placement="right"></i>
            </div>

            <div class="threaad-message-box">
                <div class="message">
                    <g:encodeAs codec="NL2BR">${feed.feedContent}</g:encodeAs>
                </div>
                <div class="action-buttons">
                    <i class="fa fa-thumbs-o-up"><span class="like-count">(72)</span></i>
                    <i class="fa fa-bullhorn"><span class="claim-count">(0)</span></i>
                </div>
            </div>
            <ul>
                <li>
                    <div class="row">
                        <div class="col-xs-9 col-md-10">
                            <input type="text" class="form-control input-sm" placeholder="댓글 입력">
                        </div>
                        <div class="col-xs-3 col-md-2 feed-comment">
                            <button class="btn btn-sm btn-info" type="button">저장</button>
                        </div>
                    </div>
                </li>
            </ul>
        </li>
        </g:each>
    </ul>
</div>
<script type="text/javascript">
$(function(){
    $('.feed-popover').popover();
});
</script>

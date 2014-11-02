package com.libqa.feed

class FeedReply {
    Long replyId
    String userId
    String userNick
    Long feedId
    String feedReplyContent
    char isDeleted

    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static belongsTo = Feed
    static constraints = {
        feedReplyContent (blank:false, nullable: false, maxSize: 4000)
    }
}

package com.libqa.feed

class FeedReply {
    Long replyId
    Long feedId
    String userId
    String userNick
    String feedReplyContent
    char isDeleted = 'N'

    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static belongsTo = Feed
    static constraints = {
        feedReplyContent (blank:false, nullable: false, maxSize: 4000)
        isDeleted (nullable: false)
    }
}

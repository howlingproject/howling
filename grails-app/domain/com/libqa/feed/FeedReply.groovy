package com.libqa.feed

class FeedReply {
    Long feedReplyId
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

    static mapping = {
        version false
        id name : 'feedReplyId'
    }

    static constraints = {
        feedReplyContent (blank:false, nullable: false, maxSize: 4000)
        isDeleted (nullable: false)
    }
}

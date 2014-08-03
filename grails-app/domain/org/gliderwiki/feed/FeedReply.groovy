package org.gliderwiki.feed

class FeedReply {
    Long replyId
    String userId
    String userNick
    Date insertDate
    Date updateDate
    Long feedId
    String feedReplyContent
    Boolean isDeleted

    static belongsTo = Feed
    static constraints = {
        feedReplyContent (blank:false, nullable: false, maxSize: 4000)
    }
}

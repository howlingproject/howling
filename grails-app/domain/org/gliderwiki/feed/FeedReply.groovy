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

    static constraints = {
    }
}

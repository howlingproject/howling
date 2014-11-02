package com.libqa.feed

class FeedLikeUser {

    Long feedLikeUserId
    Long feedId
    Long replyId
    // feedLikeType
    char isCanceled
    String userNick
    String userId

    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId
    static constraints = {
    }
}

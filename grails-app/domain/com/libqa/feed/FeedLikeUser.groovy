package com.libqa.feed

import com.libqa.application.enums.FeedLikeTypeEnum

class FeedLikeUser {
    Long feedLikeUserId
    Long feedId
    Long replyId
    FeedLikeTypeEnum feedLikeType
    char isCanceled = 'N'
    String userNick
    String userId

    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static belongsTo = Feed

    static mapping = {
        version false
        id name : 'feedLikeUserId'
    }

    static constraints = {
        isCanceled (nullable: false)
    }
}

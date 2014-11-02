package com.libqa.feed

import com.libqa.application.enums.SharedContentsTypeEnum

class Feed {
    Long feedId
    Long userId
    String userNick
    String sharedResponseId
    SharedContentsTypeEnum sharedContentsType;
    String feedContent
    String feedUrl
    int likeCount
    int claimCount
    char isShared = 'N'
    char isPrivate = 'N'
    char isSharedFb = 'N'
    char isSharedTw = 'N'
    char isSharedGp = 'N'

    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static hasMany = [feedReplies: FeedReply, feedFiles: FeedFiles, feedLikeUsers: FeedLikeUser]

    static mapping = {
        version false
        id name : 'feedId'
    }

    static constraints = {
        isShared(nullable:false)
        isPrivate(nullable:false)
        isSharedFb(nullable:false)
        isSharedTw(nullable:false)
        isSharedGp(nullable:false)
        feedContent (blank:false, nullable: false, maxSize: 4000)
        feedUrl(nullable: true, url: true)
        likeCount(nullable: true)
        claimCount(nullable: true)
    }
}

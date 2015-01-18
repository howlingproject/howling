package com.libqa.feed

import com.libqa.application.enums.SharedContentsTypeEnum

class Feed {
    Long feedId
    Long userId
    String userNick
    String sharedResponseId
    SharedContentsTypeEnum sharedContentsType
    String feedContent
    String feedUrl
    int likeCount
    int claimCount
    String isShared = 'N'
    String isPrivate = 'N'
    String isSharedFb = 'N'
    String isSharedTw = 'N'
    String isSharedGp = 'N'
    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId
    List feedFiles;

    static hasMany = [feedReplies: FeedReply, feedFiles: FeedFile]

    def getFeedReplies() {
        FeedReply.findAllByFeedId(this.feedId)
    }

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
        updateDate(nullable: true)
        sharedContentsType(nullable: true)
    }
}

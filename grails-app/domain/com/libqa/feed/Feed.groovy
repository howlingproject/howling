package com.libqa.feed

class Feed {
    Long feedId
    Long userId
    String userNick
    String sharedResponseId
    String feedContent
    String feedUrl
    int likeCount
    int claimCount
    char isShared = 'N'
    char isPrivate = 'N'
    char isSharedFB = 'N'
    char isSharedTW = 'N'
    char isSharedGP = 'N'

    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static hasMany = [feedReplies: FeedReply, feedFiles: FeedFiles, feedLikeUser: FeedLikeUser]

    static mapping = {
        version false
        id name : 'feedId'
    }

    static constraints = {
        isShared(nullable:false)
        feedContent (blank:false, nullable: false, maxSize: 4000)
        feedUrl(nullable: true, url: true)
        likeCount(nullable: true)
        claimCount(nullable: true)
        isPrivate(nullable:false)
    }
}

package com.libqa.feed

class Feed {
    Long feedId
    Long userId
    String userNick
    Boolean isShared
//    sharedContentsType
    String sharedResponseId
    int likeCount
    int claimCount
    String feedContent
    Date insertDate
    Date updateDate
// viewType
    Boolean isSharedFB
    Boolean isSharedTW
    Boolean isSharedGP
    String feedUrl

    static hasMany = [feedReplies: FeedReply, feedAttachments: FeedAttachment]
    static constraints = {
        isShared(nullable:false)
        feedContent (blank:false, nullable: false, maxSize: 4000)
        feedUrl(nullable: true, url: true)
        likeCount(nullable: true)
        claimCount(nullable: true)

    }
}

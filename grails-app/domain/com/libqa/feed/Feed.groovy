package com.libqa.feed



class Feed {
    Long feedId
    Long userId
    String userNick
    Boolean isShared
//    SharedContentsType sharedContentsType
    String sharedResponseId
    int likeCount
    int claimCount
    String feedContent
//    ViewType viewType
    Boolean isSharedFB
    Boolean isSharedTW
    Boolean isSharedGP
    String feedUrl

    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static hasMany = [feedReplies: FeedReply, feedAttachments: FeedAttachment]
    static constraints = {
        isShared(nullable:false)
        feedContent (blank:false, nullable: false, maxSize: 4000)
        feedUrl(nullable: true, url: true)
        likeCount(nullable: true)
        claimCount(nullable: true)

    }
}

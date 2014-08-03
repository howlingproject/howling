package org.gliderwiki.feed

class Feed {
    Long feedId
    Long userId
    String userNick
    Boolean isShared
//    sharedContentsType
    String sharedResponseId
    Long likeCount
    Long claimCount
    String feedContent
    Date insertDate
    Date updateDate
// viewType
    Boolean isSharedFB
    Boolean isSharedTW
    Boolean isSharedGP
    String feedUrl

    static constraints = {
    }
}

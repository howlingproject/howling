package com.libqa.qa

class QaContents {

    Long qaId
    String wikiId    // Type은 먼지?
    String title
    String contents
    Long userId   //  Long String?
    String userNick
    int viewCount
    int recommandCount
    int likeCount
    char isDeleted = "N"     // (Y,N)
    char isShared = "N"   // (Y, N)
//    sharedContentsType
    String sharedResponseId
    char isReplyed //   (Y: 답변, N:답변없음)
    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static mapping = {
        version false
    }

    static constraints = {
    }
}

package com.libqa.qa

class QaContents {

    String contentId
    String title    // Type은 먼지?
    String contents
    String userId   //  Long String?
    String userNick
    Date insertDate
    Date updateDate
    int viewCount
    int recommandCount
    int likeCount
    char shared // (Y,N)
//    sharedContentsType
    char isReplyed //   (Y: 답변, N:답변없음)
    String sharedResponseId
    String test

    static constraints = {
    }
}

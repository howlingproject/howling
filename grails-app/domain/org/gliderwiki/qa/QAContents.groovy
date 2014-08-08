package org.gliderwiki.qa

import javassist.compiler.ast.Keyword

class QAContents {

    Long contentId
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

    static hasMany = [contentIds : Keyword, contentIds : QAReply, contentIds : SharedContents_FB, contentIds :Recommand]
    static constraints = {
    }
}

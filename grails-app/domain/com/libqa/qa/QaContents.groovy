package com.libqa.qa

import com.libqa.application.enums.SharedContentsTypeEnum

class QaContent {

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
    SharedContentsTypeEnum sharedContentsType
    String sharedResponseId
    char isReplyed //   (Y: 답변, N:답변없음)
    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId


    static hasMany = [qaReplys : QaReply, qaRecomands :QaRecommand]
    static mapping = {
        version false
        id name : 'qaId'
    }

    static constraints = {
        wikiId(nullable:true)
        contents(nullable:false)
        userId(nullable:false)
        userNick(nullable:false)
        viewCount(nullable:false)
        recommandCount(nullable:false)
        likeCount(nullable:false)
        isDeleted(nullable:false)
        isShared(nullable:false)
        sharedContentsType(nullable:true)
        sharedResponseId(nullable:true)
        isReplyed(nullable:false)
        insertDate(nullable:false)
        updateDate(nullable:false)
        insertUserId(nullable:false)
        updateUserId(nullable:false)
    }
}

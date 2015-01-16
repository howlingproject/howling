package com.libqa.qa

import com.libqa.application.enums.SharedContentsTypeEnum

class QaContent {

    Long qaId
    String wikiId    // Type은 먼지?
    String title
    String contents
    String contentsMarkup
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
    List<Keyword> keywords;


    static hasMany = [qaReplys : QaReply, qaRecomands :QaRecommand]
    static mapping = {
        version false
        id name : 'qaId'
        contents type:'text'
        contentsMarkup type:'text'
    }

    static constraints = {
        wikiId(nullable:true)
        contents(nullable:false)
        contentsMarkup(nullable:false)
        userId(nullable:false)
        userNick(nullable:false)
        viewCount(nullable:true)
        recommandCount(nullable:true)
        likeCount(nullable:true)
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

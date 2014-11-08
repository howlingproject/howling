package com.libqa.qa

class QaReply {

    Long replyId
    Long qaId
    Long parentsId
    int orderIdx
    int depthIdx
    String title
    String contents
    Long userId
    String userNick
    int voteUpCount
    int voteDownCount
    char isChoice = "N"   //(글쓴이가 선택함)
    char isDeleted = "N"
    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static mapping = {
        version false
        id name : 'replyId'
    }

    static hasMany = [qaReplys : QaReply, votes :Vote]

    static constraints = {
        qaId(nullable: false)
        parentsId(nullable: true)
        orderIdx(nullable: false)
        depthIdx(nullable: false)
        title(nullable: false)
        contents(nullable: false)
        userId(nullable: false)
        userNick(nullable: false)
        voteUpCount(nullable: false)
        voteDownCount(nullable: false)
        isChoice(nullable: false)
        isDeleted(nullable: false)
        insertDate(nullable: false)
        updateDate(nullable: false)
        insertUserId(nullable: false)
        updateUserId(nullable: false)
    }
}

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

    static belongsTo = [parentsId : QaContents]

    static hasMany = [qaReplys : QaReply, qaRecomands :QaRecommand]

    static constraints = {
    }
}

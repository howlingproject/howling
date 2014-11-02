package com.libqa.qa

class Vote {

    Long replyId
    Long userId
    String userNick
    char isVote = "N" //(Y:추천, N:비추천)
    char isCancel = "N"
    Date insertDate
    Date updateDate

    static mapping = {
        version false
        id name : 'replyId'
    }

    static belongsTo = [replyId : QaReply]
    static constraints = {
    }
}

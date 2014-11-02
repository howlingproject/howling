package com.libqa.qa

class QaReply {

    Long replyId
    Long qaId
    Long parentsId
    int orderIdx
    int depthIdx
    String title
    String contents
    Long userId   //  Long String?
    String userNick
    int voteUpCount
    int voteDownCount
    char isChoice = "N"   //(글쓴이가 선택함)
    char isDeleted = "N"
    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static belongsTo = [parentsId : QaContents]
    static constraints = {
    }
}

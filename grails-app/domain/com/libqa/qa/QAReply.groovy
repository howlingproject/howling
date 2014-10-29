package com.libqa.qa

class QAReply {

    Long replyId
    Long parentsId
    int orderIdx
    int depthIdx
    String contents
    String userId   //  Long String?
    String userNick
    Date InsertDate
    Date updateDate
    char IsDeleted //(Y:N)
    Boolean IsChoice   //(글쓴이가 선택함)

//    static hasMany = [replyId : Vote]
    static belongsTo = [parentsId : QAContents]
    static constraints = {
    }
}

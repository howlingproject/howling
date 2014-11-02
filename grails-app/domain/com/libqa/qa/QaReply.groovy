package com.libqa.qa

class QaReply {

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

    static belongsTo = [parentsId : QaContents]
    static constraints = {
    }
}

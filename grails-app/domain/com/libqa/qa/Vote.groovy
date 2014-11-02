package com.libqa.qa

import com.libqa.qa.QAReply

class Vote {

    Long replyId
    String userId //  Long String?
    String userNick
    char IsVote //(Y:추천, N:비추천)
    boolean isCancel
    Date InsertDate

//    static belongsTo = [replyId : QAReply]
    static constraints = {
    }
}

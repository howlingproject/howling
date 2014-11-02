package com.libqa.qa

class QaRecommand {

    Long contentId
    String userId   //  Long String?
    String userNick
    char IsCommand  //( Y:추천, N:비추천)
    Date InsertDate

    static belongsTo = [contentId : QaContents]
    static constraints = {
    }
}

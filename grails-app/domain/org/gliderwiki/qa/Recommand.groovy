package org.gliderwiki.qa

class Recommand {

    Long contentId
    String userId   //  Long String?
    String userNick
    char IsCommand  //( Y:추천, N:비추천)
    Date InsertDate

    static belongsTo = [contentId : QAContents]
    static constraints = {
    }
}

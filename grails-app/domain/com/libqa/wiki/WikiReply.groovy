package com.libqa.wiki

class WikiReply {

    Long replyId
    Long wikiId
    String title
    String contents
    String userId
    String userNick
    Date insertDate
    char isDeleted // (Y:N)
    Date updateDate

    static belongsTo = [wiki: Wiki]
    static constraints = {
    }
}

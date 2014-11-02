package com.libqa.wiki

class WikiReply {

    Long replyId
    Long wikiId
    String title
    String contents
    String userId
    String userNick
    Date insertDate
    char isDeleted = "N"// (Y:N)
    Date updateDate

    static belongsTo = [wikiId: Wiki]

    static mapping = {
        version false
        id name : 'wikiId'
    }

    static constraints = {
        wikiId (nullable: false)
        replyId (nullable: false)
    }
}

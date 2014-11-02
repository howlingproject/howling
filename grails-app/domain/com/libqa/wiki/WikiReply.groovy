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

    static belongsTo = [Wiki]

    static mapping = {
        version false
        id name : 'replyId'
    }

    static constraints = {
        wikiId (nullable: false)
        replyId (nullable: false)
    }
}

package org.gliderwiki.wiki

class WikiReply {

    Long replyId
    Long wikiId
    String title
    String Contents
    String UserId
    String UserNick
    Date InsertDate
    char IsDeleted // (Y:N)
    Date UpdateDate

    static constraints = {
    }
}

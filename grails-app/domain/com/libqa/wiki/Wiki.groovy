package com.libqa.wiki

class Wiki {

    Long spaceid
    Long wikiId
    Long parentsId
    String title
    int orderIdx
    int depthIdx
    String contentsMarkup
    String contents
    char isLock //(Y,N)
    String passwd
    String userNick
    String userId
    int viewCount
    int likeCount
    int reportCount
    char isFixed  //(상단 고정여부)
    String wikiUrl
    String currentIp
    String editReason
    String revision
    char isDeleted //(Y,N)


    static hasMany = [wikibacks: Wikiback, wikireplys: WikiReply, wikifiles: WikiFiles]
    static constraints = {
    }
}

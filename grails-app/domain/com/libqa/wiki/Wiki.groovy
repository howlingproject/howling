package com.libqa.wiki

class Wiki {

    Long spaceId
    Long wikiId
    Long parentsId
    String title
    int orderIdx
    int depthIdx
    String contentsMarkup
    String contents
    char isLock = "N" //(Y,N)
    String passwd
    String userNick
    String userId
    int viewCount
    int likeCount
    int reportCount
    char isFixed = "N" //(상단 고정여부)
    String wikiUrl
    String currentIp
    String editReason
    String revision
    char isDeleted = "N" //(Y,N)

    static hasMany = [wikibacks: WikiBack, wikireplys: WikiReply, wikifiles: WikiFiles]
    static constraints = {
    }
}

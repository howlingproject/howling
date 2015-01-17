package com.libqa.wiki

import com.libqa.space.Space

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

    Date insertDate
    Date updateDate

    static hasMany = [wikibacks: WikiBack, wikireplys: WikiReply, wikifiles: WikiFiles]

    static belongsTo = [spaceId: Space]

    static mapping = {
        version false
        id name : 'wikiId'
        contentsMarkup type : 'text'
        contents type : 'text'
    }

    static constraints = {
        userId (blank:false, nullable: false)
        isDeleted (nullable: false)
        isLock (nullable: false)
        isFixed (nullable: false)

        wikiUrl(nullable: true, url: true)
        editReason(nullable: true)
        revision(nullable: true)
        parentsId(nullable: true)
        updateDate(nullable: true)

    }
}

package com.libqa.wiki

class WikiBack {

    Long wikiBackId
    Long wikiId
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
    // revisionActionType // (내용수정, 제목수정, 첨부파일, 내용삭제등)

    static belongsTo = [Wiki]

    static mapping = {
        version false
        id name : 'wikiBackId'
    }

    static constraints = {
        wikiId (nullable: false)
        wikiBackId (nullable: false)
    }
}
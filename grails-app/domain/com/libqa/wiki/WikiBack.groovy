package com.libqa.wiki

class WikiBack {

    Long wikiBackId
    Long wikiId
    int revision
    // revisionActionType // (내용수정, 제목수정, 첨부파일, 내용삭제등)

    static belongsTo = [wikiId: Wiki]

    static mapping = {
        version false
        id name : 'wikiId'
    }

    static constraints = {
    }
}

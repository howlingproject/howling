package com.libqa.wiki

class Wikiback {

    Long wikiBackId
    Long wikiId
    int revision
    // revisionActionType // (내용수정, 제목수정, 첨부파일, 내용삭제등)

    static belongsTo = [wiki: Wiki]
    static constraints = {
    }
}

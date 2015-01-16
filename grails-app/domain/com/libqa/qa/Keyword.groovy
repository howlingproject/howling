package com.libqa.qa

import com.libqa.application.enums.KeywordTypeEnum

class Keyword {
    
    Long keywordId
    Long qaId
    Long wikiId
    Long spaceId
    String keywordName
    KeywordTypeEnum keywordType
    char isDeleted = "N" //(Y:삭제 N:사용)
    Date insertDate
    Date updateDate

    static mapping = {
        version false
        id name : 'keywordId'
    }

    static constraints = {
        qaId(nullable:true)
        wikiId(nullable:true)
        spaceId(nullable:true)
        keywordName(nullable:false)
        keywordType(nullable:false)
        isDeleted(nullable:false)
        insertDate(nullable:false)
        updateDate(nullable:false)
    }
}

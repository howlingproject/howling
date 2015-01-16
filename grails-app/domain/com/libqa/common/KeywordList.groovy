package com.libqa.common

import com.libqa.application.enums.KeywordTypeEnum

class KeywordList {
    Long keywordId
    String keywordName
    int keywordCount
    KeywordTypeEnum keywordType
    char isDeleted = "N"

    static mapping = {
        version false
        id name : 'keywordId'
    }

    static constraints = {
        keywordName(nullable: false)
        keywordCount(nullable: false)
        keywordType(nullable: false)
        isDeleted(nullable: false)
    }
}

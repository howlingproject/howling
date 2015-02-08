package com.libqa.common

import com.libqa.application.enums.KeywordTypeEnum

/**
 * 키워드 전체 카운트
 */
class KeywordList {
    Long keywordListId
    String keywordName
    int keywordCount
    KeywordTypeEnum keywordType
    char isDeleted = "N"

    static mapping = {
        version false
        id name : 'keywordListId'
    }

    static constraints = {
        keywordName(nullable: false)
        keywordCount(nullable: false)
        keywordType(nullable: false)
        isDeleted(nullable: false)
    }
}

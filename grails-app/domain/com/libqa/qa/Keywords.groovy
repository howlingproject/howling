package com.libqa.qa

import com.libqa.application.enums.KeywordTypeEnum

class Keywords {
    
    Long keywordId
    Long qaContentId
    Long wikiId
    Long spaceId
    String keywordName
    KeywordTypeEnum keywordType
    char isDeleted  //(Y:삭제 N:사용)
    Date insertDate
    Date updateDate

    static mapping = {
        version false
        id name : 'keywordId'
    }

    static constraints = {
    }
}

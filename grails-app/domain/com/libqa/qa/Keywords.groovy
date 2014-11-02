package com.libqa.qa

class Keywords {
    
    Long keywordId
    Long qaContentId
    Long wikiId
    Long spaceId
    String keywordName
//    enum keywordType    //enum (QA,WIKI,SPACE)
    char isDeleted  //(Y:삭제 N:사용)
    Date insertDate
    Date updateDate

    static belongsTo = [contents : QaContents]
    static constraints = {
    }
}

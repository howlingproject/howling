package com.libqa.space

import com.libqa.application.enums.LayoutTypeEnum

class Space {

    Long spaceId
    String description
    String title
    String titleImage
    String titleImagePath
    char isPrivate          // (Y,N)
    char isDeleted          // (Y,N)
    LayoutTypeEnum layoutType
    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId


    static constraints = {
        spaceId nullable: false
        description nullable: false
        title nullable: false, maxSize : 200
        layoutType nullable: false
    }
}

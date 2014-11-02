package com.libqa.space

import com.libqa.application.enums.LayoutTypeEnum
import com.libqa.wiki.Wiki

class Space {
//    Long id
    Long spaceId
    String description
    String title
    String titleImage
    String titleImagePath
    char isPrivate = "N"          // (Y,N)
    char isDeleted = "N"          // (Y,N)
    LayoutTypeEnum layoutType
    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static mapping = {
        version false
        id name : 'spaceId'
    }

    static hasMany = [spaceAccessUser : SpaceAccessUser, wiki : Wiki]


    static constraints = {
        description nullable: false
        title nullable: false, maxSize: 200
        layoutType nullable: false
        isPrivate nullable: false
        isDeleted nullable: false
    }
}

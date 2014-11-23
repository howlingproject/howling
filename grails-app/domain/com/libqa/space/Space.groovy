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
    String isPrivate = "N"          // (Y,N)
    String isDeleted = "N"          // (Y,N)
    LayoutTypeEnum layoutType
    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static mapping = {
        version false
        id name : 'spaceId'
    }

    static hasMany = [spaceAccessUsers : SpaceAccessUser, wikis : Wiki]


    static constraints = {

        title nullable: false, maxSize: 200
        isPrivate nullable: false
        isDeleted nullable: false
        titleImage nullable: true
        titleImagePath nullable: true
        updateDate nullable: true
        updateUserId nullable: true
    }
}

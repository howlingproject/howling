package com.libqa.space

import com.libqa.application.enums.LayoutTypeEnum
import com.libqa.wiki.Wiki

class Space {
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
        description type: "text"
    }

    static hasMany = [spaceAccessUsers : SpaceAccessUser, wikis : Wiki]


    static constraints = {
        title blank: false, nullable: false, maxSize: 200
        titleImage nullable: true
        titleImagePath nullable: true
        isPrivate blank: false, nullable: false
        isDeleted blank: false, nullable: false
        layoutType blank: false, nullable: false
        insertDate nullable: false
        insertUserId nullable: false
        updateDate nullable: true
        updateUserId nullable: true
    }
}

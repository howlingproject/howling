package com.libqa.space

class Space {

    Long spaceId
    String description
    String title
    String titleImage
    String titleImagePath
    char isPrivate // (Y,N)
    char isDeleted // (Y,N)
    String layoutType
    Date InsertDate
    Date updateDate
    Long insertUserId
    Long updateUserId


    static hasMany = [spaceAccessUsers : SpaceAccessUser]

    static constraints = {
        spaceId nullable: false
        description nullable: false
        title nullable: false, maxSize : 200
        layoutType nullable: false
    }
}

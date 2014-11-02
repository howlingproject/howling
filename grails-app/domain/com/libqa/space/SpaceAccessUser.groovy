package com.libqa.space

class SpaceAccessUser {

    Long spaceId
    Long userId
    char isDeleted = "N"// (Y,N)
    Date insertDate
    Date updateDate

    static belongsTo = Space

    static constraints = {
        spaceId (blank:false, nullable: false)
        userId (blank:false, nullable: false)
        isDeleted (nullable: false)
    }
}

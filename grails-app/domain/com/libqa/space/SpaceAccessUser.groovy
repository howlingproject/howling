package com.libqa.space

class SpaceAccessUser {

    Long spaceId
    Long userId
    char isDeleted // (Y,N)
    Date insertDate
    Date updateDate

    static constraints = {
    }
}

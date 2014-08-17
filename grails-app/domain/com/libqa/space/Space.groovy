package com.libqa.space

class Space {

    Long spaceId
    String description
    String title
    String titleImage
    String titleImagePath
    char isPrivate // (Y,N)
    char isDeleted // (Y,N)
    Date InsertDate
    // layoutType(left, default, right)

    static constraints = {
    }
}

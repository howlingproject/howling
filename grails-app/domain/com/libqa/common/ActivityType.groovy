package com.libqa.common

class ActivityType {

    Long activityTypeId
    Long userId
    String activityDesc
    char isDeleted = "N"    // (Y,N)
    Date insertDate
    Long insertUserId

    static constraints = {
        userId (blank:false, nullable: false)
        isDeleted (nullable: false)
    }
}


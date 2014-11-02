package com.libqa.common

class Activity {

    Long activityId
    Long activityTypeId
    Long userId
    String activityDesc
    String activityLink
    char isDeleted = "N"     // (Y,N)
    char isConfirmed = "N"   // 확인 여부 (Y, N)
    Date insertDate
    Date confirmDate

    static constraints = {
        userId (blank:false, nullable: false)
        isDeleted (nullable: false)
        isConfirmed (nullable: false)
    }
}

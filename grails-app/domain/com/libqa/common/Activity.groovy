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

    static belongsTo = [ActivityType]

    static mapping = {
        version false
        id name : 'activityId'
    }

    static constraints = {
        activityTypeId (nullable: false)
        userId (blank:false, nullable: false)
        isDeleted (nullable: false)
        isConfirmed (nullable: false)
    }
}

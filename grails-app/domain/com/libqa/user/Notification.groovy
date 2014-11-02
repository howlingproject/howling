package com.libqa.user

class Notification {

    Long notificationId
    Long notificationTypeId
    Long userId
    Long fromUserId
    String notificationDesc
    String notificationLink
    Date insertDate
    Date confirmDate
    char isConfirmed = "N"

    static constraints = {
        userId (nullable: false)
        fromUserId (nullable: false)
        isConfirmed (nullable: false)
    }
}

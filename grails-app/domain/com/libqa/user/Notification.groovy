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

    static belongsTo = [User, NotificationType]

    static mapping = {
        version false
        id name : 'notificationId'
    }


    static constraints = {
        userId (nullable: false)
        fromUserId (nullable: false)
        notificationTypeId (nullable: false)
        isConfirmed (nullable: false)
    }
}

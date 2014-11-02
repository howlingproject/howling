package com.libqa.user

class NotificationType {

    Long notificationTypeId
    String notificationType
    String notificationDesc
    char isDeleted = "N"    // (Y,N)
    Date insertDate


    static mapping = {
        version false
        id name : 'notificationTypeId'
    }


    static constraints = {
        notificationType (nullable: false)
        isDeleted (nullable: false)
    }
}

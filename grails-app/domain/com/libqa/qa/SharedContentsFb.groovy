package com.libqa.qa

import com.libqa.application.enums.SharedContentsTypeEnum

class SharedContentsFb {

    Long sharedContentsId
    SharedContentsTypeEnum sharedContentsType
    Long commentId
    String attachment   //struct
    char canComment = "N"
    char canRemove = "N"
    int commentCount
    Date createdTime
    Long fromUser //user
    int likeCount
    String message
    String messageTags
    Long   parent
    char userLikes
    Long qaId

    static mapping = {
        version false
        id name : 'sharedContentsId'
    }

    static constraints = {
        sharedContentsType(nullable: false)
        commentId(nullable: false)
        attachment(nullable: false)
        canComment(nullable: false)
        canRemove(nullable: false)
        commentCount(nullable: true)
        createdTime(nullable: false)
        fromUser(nullable: false)
        likeCount(nullable: true)
        message(nullable: false)
        messageTags(nullable: false)
        parent(nullable: false)
        userLikes(nullable: false)
        qaId(nullable: false)
    }
}

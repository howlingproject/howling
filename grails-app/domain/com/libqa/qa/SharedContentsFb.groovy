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
    }
}

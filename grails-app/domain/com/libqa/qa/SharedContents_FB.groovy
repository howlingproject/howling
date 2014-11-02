package com.libqa.qa

import com.libqa.application.enums.SharedContentsTypeEnum

class SharedContents_FB {

    Long sharedContentsId
    SharedContentsTypeEnum sharedContentsType
    Long commentId
    String attachment   //struct
    char canComment = "N"
    char canRemove = "N"
    int commentCount
    Date createdTime
    Long from //user
    int likeCount
    String message
    String messageTags
    Long   parent
    char userLikes
    Long qaId

    static constraints = {
    }
}

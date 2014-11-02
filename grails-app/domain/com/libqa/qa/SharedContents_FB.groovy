package com.libqa.qa

class SharedContents_FB {

    Long sharedContentsId
//     sharedContentsType
    Long commentId
//     attachment   //struct
    char canComment = "N"
    char canRemove = "N"
    int commentCount
    Date createdTime
//     from //user
    int likeCount
    String message
    String messageTags
//     parent   //comment
    char userLikes
    Long qaId

    static belongsTo = [contentId : QaContents]
    static constraints = {
    }
}

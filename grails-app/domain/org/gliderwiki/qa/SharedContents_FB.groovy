package org.gliderwiki.qa

class SharedContents_FB {

    Long sharedContentsId
//     sharedContentsType
    Long commentId
//     attachment   //struct
    boolean can_comment
    boolean can_remove
    int comment_count
    Date created_time
//     from //user
    int like_count
    String message
    String message_tags
//     parent   //comment
    boolean user_likes
    Long contentId

    static belongsTo = [contentId : QAContents]
    static constraints = {
    }
}

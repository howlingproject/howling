package com.libqa.feed

class FeedAttachment {
    Long attachmentId
    String fileName
    Long fileSize
    String fileType
    Integer downloadCount
    Date insertDate
    Date updateDate
    Long feedId

    static belongsTo = Feed
    static constraints = {
        fileName (blank:false, nullable: false, size:5..500)
        fileSize (blank:false, nullable: false)
        downloadCount (nullable: true)

    }
}

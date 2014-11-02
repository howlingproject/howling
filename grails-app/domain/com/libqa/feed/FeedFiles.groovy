package com.libqa.feed

class FeedFiles {
    Long feedFileId
    String fileName
    Long fileSize
    String fileType
    Integer downloadCount
    Long feedId

    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static belongsTo = Feed
    static constraints = {
        fileName (blank:false, nullable: false, size:5..500)
        fileSize (blank:false, nullable: false)
        downloadCount (nullable: true)
    }
}

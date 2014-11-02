package com.libqa.feed

class FeedFiles {
    Long feedFileId
    Long feedId
    String fileName
    String fileType
    Long fileSize
    Integer downloadCount
    char isDeleted = 'N'

    Date insertDate
    Date updateDate
    Long insertUserId
    Long updateUserId

    static belongsTo = Feed

    static mapping = {
        version false
        id name : 'feedFileId'
    }

    static constraints = {
        fileName (blank:false, nullable: false, size:5..500)
        fileSize (blank:false, nullable: false)
        downloadCount (nullable: true)
        isDeleted (nullable: false)
    }
}

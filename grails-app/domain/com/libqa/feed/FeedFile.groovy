package com.libqa.feed

class FeedFile {
    Long feedFileId
    Long feedId
    String realName
    String savedName
    String filePath
    Long fileSize
    Integer downloadCount
    Long userId
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
        realName (blank:false, nullable: false, size:5..500)
        savedName (blank:false, nullable: false, size:5..500)
        filePath (blank:false, nullable: false)
        fileSize (blank:false, nullable: false)
        downloadCount (nullable: true)
        isDeleted (nullable: false)
        updateDate (nullable: true)
        updateUserId (nullable: true)
    }
}

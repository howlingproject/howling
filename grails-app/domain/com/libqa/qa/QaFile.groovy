package com.libqa.qa

class QaFile {
    Long qaId
    Long fileId
    String realName
    String saveName
    String path
    int fileSize
    String fileType
    char isDeleted = "N"
    Long userId

    static belongsTo = [QaContent]

    static mapping = {
        version false
        id name : 'fileId'
    }

    static constraints = {
        qaId (nullable: false)
        fileId (nullable: false)
    }
}

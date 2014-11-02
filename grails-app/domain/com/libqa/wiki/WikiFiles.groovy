package com.libqa.wiki

class WikiFiles {

    Long wikiId
    Long fileId
    String realName
    String saveName
    String path
    int fileSize
    String fileType
    char isDeleted = "N" //(Y,N)
    long userId

    static belongsTo = [Wiki]

    static mapping = {
        version false
        id name : 'fileId'
    }

    static constraints = {
        wikiId (nullable: false)
        fileId (nullable: false)
    }
}

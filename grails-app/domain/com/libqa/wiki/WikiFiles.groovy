package com.libqa.wiki

class WikiFiles {

    Long wikiId
    Long fileId
    String realName
    String saveName
    String path
    int fileSize
    String fileType
    char isDeleted //(Y,N)
    long userId

    static belongsTo = [parentsId: Wiki]
    static constraints = {
    }
}

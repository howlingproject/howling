package com.libqa.qa

class QaRecommand {

    Long qaId
    Long userId   //  Long String?
    String userNick
    char isCommand = "N"  //( Y:추천, N:비추천)
    Date insertDate

    static mapping = {
        version false
        id name : 'qaId'
    }

    static belongsTo = [qaContents : QaContents]
    static constraints = {
    }
}

package com.libqa.qa

class QaRecommand {

    Long qaId
    Long userId   //  Long String?
    String userNick
    char isCommand = "N"  //( Y:추천, N:비추천)
    Date insertDate

    static constraints = {
        userId(nullable: false)
        userNick(nullable: false)
        isCommand(nullable: false)
        insertDate(nullable: false)
    }
}

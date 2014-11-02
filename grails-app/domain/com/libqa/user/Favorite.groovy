package com.libqa.user

import com.libqa.application.enums.FavoriteTypeEnum

class Favorite {

    Long favoriteId
    Long userId
    FavoriteTypeEnum favoriteTypeEnum
    Long spaceId
    Long wikiId
    Long qaId
    char isDeleted = "N"    // (Y,N)
    Date insertDate
    Date updateDate

    static belongsTo = [User]

    static constraints = {
        isDeleted (nullable: false)
    }
}

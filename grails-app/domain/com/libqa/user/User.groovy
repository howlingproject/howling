package com.libqa.user

class User {
    Long userId
    String userEmail
    String userNick
    String userSite
    String userImage
    char isDeleted = "N"        // (Y:탈퇴,N:활성)
    String faceBookKey
    String googleKey
    String tweeterKey
    String userPass
    Long visiteCount = 0
    Date lastVisiteDate
    Date insertDate
    Date updateDate
    Long userPoint = 0
    String interestKeyword      // 관심분야 콤마 구분자
    char isCertification = "N"        // 인증여부
    String certificationValue   // 인증 키

    static constraints = {
        userId (nullable: false)
        userEmail (nullable: false)
        userNick (nullable: false)
        isDeleted (nullable: false)
        visiteCount (nullable: false)
        userPoint (nullable: false)
        isCertification (nullable: false)
    }
}

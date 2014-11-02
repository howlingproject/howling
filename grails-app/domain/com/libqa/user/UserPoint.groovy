package com.libqa.user

import com.libqa.application.enums.PointTypeEnum

class UserPoint {

    Long userId
    Long userPoint // (+ - 포함)
    PointTypeEnum pointType // (Wiki글 쓰기, QA답변, QA 추천,  공유갯수, 로그인횟수, Feed쓰기, Feed 답변, Feed 좋아요,즐겨찾기, 신고, 비추천)
    Long fromUserId
    Date insertDate

    static belongsTo = [User]

    static constraints = {
        userId (nullable: false)
        userPoint (nullable: false)
        pointType (nullable: false)
        fromUserId (nullable: false)
    }
}

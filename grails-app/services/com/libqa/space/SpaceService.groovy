package com.libqa.space

import com.libqa.application.enums.KeywordTypeEnum
import com.libqa.qa.Keyword
import grails.transaction.Transactional


class SpaceService {

    @Transactional(readOnly = false)
    def saveSpace(Space space, String keyword) {
        log.debug("------------ SpaceService : "+ space)
        Space newInstace = space.save(flush: true, failOnError: true)

        if (keyword != null) {
            String [] keywords = keyword.split(",")
            for (int i = 0; 1 < keyword.length(); i++) {
                Keyword keywordDto = new Keyword()
                keywordDto.keywordName = keywords[i]
                keywordDto.keywordType = KeywordTypeEnum.SPACE
                keywordDto.spaceId = newInstace.spaceId
                keywordList.add(keywordDto)
            }
        }

        // TODO Keyword 저장 로직 호출


    }

    def checkTitle() {
    }

}

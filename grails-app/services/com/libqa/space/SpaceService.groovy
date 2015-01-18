package com.libqa.space

import com.libqa.application.enums.KeywordTypeEnum
import com.libqa.common.Keyword
import grails.transaction.Transactional
import grails.validation.ValidationException
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap


@Transactional
class SpaceService {

    // static transactional = true

    def keywordService


    def saveSpaceAndKeywords(Space space, String keyword) {
        log.info("@@@@@@ SpaceService : " + space)
        log.info("@@@@@@ keyword : " + keyword)

        Space newInstance = space.save(flush: true, failOnError: true)
        log.info("###newInstance : " + newInstance)
        List<Keyword> keywordList = new ArrayList<>()

        if (keyword != null) {
            String [] keywords = keyword.split(",")
            log.info("#Keywords Length :" + keywords.length)

            for (int i = 0; i < keywords.length; i++) {
                Keyword keywordDto = new Keyword()

                log.info("#keywords[i]  : "+ i +" = " + keywords[i])
                keywordDto.keywordName = keywords[i]
                keywordDto.keywordType = KeywordTypeEnum.SPACE
                keywordDto.spaceId = newInstance.spaceId
                keywordList.add(keywordDto)
            }
        }

        // TODO Keyword 저장 로직 호출
        keywordService.saveKeyword(newInstance, keywordList)
    }

}
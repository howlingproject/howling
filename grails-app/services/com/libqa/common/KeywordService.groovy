package com.libqa.common

import com.libqa.application.enums.KeywordTypeEnum
import com.libqa.qa.QaContent
import com.libqa.space.Space
import com.libqa.wiki.Wiki
import grails.transaction.Transactional

@Transactional
class KeywordService {

    def keywordListService

    def saveKeywordListAndKeyword(Object obj, keywordType) {
        def successType = 1
        try {
            successType = keywordListService.saveKeywordList(obj, keywordType)
            if(successType == 1) {
                for (keyword in obj.keywords) {
                    if (obj instanceof Space) {
                        keyword.setSpaceId(obj.spaceId)
                    } else if (obj instanceof QaContent) {
                        keyword.setQaId(obj.qaId)
                    } else if (obj instanceof Wiki) {
                        keyword.setWikiId(obj.wikiId)
                    }
                    keyword.keywordType = keywordType
                    keyword.insertDate = new Date()
                    keyword.updateDate = new Date()
                    keyword.save(flush: true, failOnError: true)
                }
            }
        }catch(e){
            log.debug(e.printStackTrace())
            successType = 0
        }
        return successType
    }

    def saveKeyword(keywordObj, keywordType){
        keywordObj.keywordType = keywordType
        keywordObj.insertDate = new Date()
        keywordObj.updateDate = new Date()
        keywordObj.save(flush: true, failOnError: true)
    }
}

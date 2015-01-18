package com.libqa.common

import grails.transaction.Transactional
import org.springframework.transaction.annotation.Propagation

class KeywordListService {

    static transactional = true

    def categorizeKeywordList(keywordType){
        def categorizeKeywordObj = KeywordList.findAllByKeywordTypeAndIsDeleted(keywordType, "N")
        return categorizeKeywordObj
    }

    def saveKeywordList(Object obj, keywordType){
        def successType = 1
        try {
            for (keyword in obj.keywords) {
                def keywordName = keyword.keywordName
                // TODO List KeywordList table에 아래의 조건으로 index를 걸어야함
                def keywordListObj = findKeywordListByKeywordNameAndKeywordType(keywordName, keywordType)
                if (keywordListObj == null) {
                    keywordListObj = new KeywordList()
                    keywordListObj.setKeywordName(keywordName)
                    keywordListObj.setKeywordType(keywordType)
                } else {
                    keywordListObj.keywordCount = keywordListObj.getKeywordCount() + 1
                }
                save(keywordListObj)
            }
        }catch(e){
            log.debug(e.printStackTrace())
            successType = 0
        }
        return successType
    }

    def findKeywordListByKeywordNameAndKeywordType(keywordName, keywordType){
        return KeywordList.findByKeywordNameAndKeywordTypeAndIsDeleted(keywordName, keywordType, 'N')
    }

    def save(def keywordList) {
        keywordList.save(failOnError:true)
    }

}

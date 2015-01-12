package com.libqa.qa

import com.libqa.application.enums.KeywordTypeEnum
import com.libqa.common.KeywordList
import grails.transaction.Transactional
import org.springframework.transaction.annotation.Propagation

class QaContentService {
    static transactional = false

    def keywordService
    def keywordListService


    @Transactional(rollbackFor = RuntimeException.class)
    def saveWithKeyword(qaContentInstance) {
//        try {
            test(qaContentInstance,  KeywordTypeEnum.QA)
//            qaSave(qaContentInstance)
//            keywordListService.keywordCheck(qaContentInstance, KeywordTypeEnum.QA)
//            keywordService.save(qaContentInstance, KeywordTypeEnum.QA)
//        }catch(Exception e){
//            throw new RuntimeException("제발제발!!!!!")
//        }
    }

    private qaSave(qaContentInstance) {
        qaContentInstance.insertDate = new Date()
        qaContentInstance.updateDate = new Date()
        qaContentInstance.save(failOnError:true)
    }

    private test(qaContentInstance, keywordType) {
        try {
            qaContentInstance.insertDate = new Date()
            qaContentInstance.updateDate = new Date()
            qaContentInstance.save(failOnError: true)

            for (keyword in qaContentInstance.keywords) {
                def keywordName = keyword.keywordName
                // TODO List KeywordList table에 아래의 조건으로 index를 걸어야함
                def keywordListObj = KeywordList.findByKeywordNameAndKeywordType(keywordName, keywordType)
                if (keywordListObj == null) {
                    keywordListObj = new KeywordList()
                    keywordListObj.setKeywordName(keywordName)
                    keywordListObj.setKeywordType(keywordType)
                } else {
                    keywordListObj.keywordCount = keywordListObj.getKeywordCount() + 1
                }
                keywordListObj.save(failOnError: true)
            }

            def qaId = qaContentInstance.getQaId()
            for (keyword in qaContentInstance.keywords) {
                keyword.setQaId(qaId)
                keyword.keywordType = keywordType
                keyword.insertDate = new Date()
                keyword.updateDate = new Date()
                keyword.save(flush: true, failOnError: true)
            }
        }catch(Exception e){
            log.debug(e.printStackTrace())
            throw new RuntimeException("제발제발!!!!!")
        }
    }

    def save(def qaContent) {
        qaContent.insertDate = new Date()
        qaContent.updateDate = new Date()
        qaContent.save(flush:true, failOnError:true)
    }


}

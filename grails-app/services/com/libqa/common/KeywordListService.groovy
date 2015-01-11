package com.libqa.common

import grails.transaction.Transactional
import org.springframework.transaction.annotation.Propagation

class KeywordListService {

    static transactional = true

    def keywordCheck(keywordNames, keywordType, test) {
        KeywordList keywordListInstance = new KeywordList()
        for(keywordName in keywordNames){
            // TODO List KeywordList table에 아래의 조건으로 index를 걸어야함
            def keywordListObj = KeywordList.findByKeywordNameAndKeywordType(keywordName, keywordType)
            if(keywordListObj != null){
                keywordListInstance.setKeywordCount(keywordListObj.getKeywordCount() + 1)
            }
            keywordListInstance.setKeywordName(keywordName)
            keywordListInstance.setKeywordType(keywordType)
            save(keywordListInstance)

        }
    }

//    def keywordCheck(keyword, params) {
//        for(keywordName in params.keywordName){
//            // TODO List KeywordList table에 아래의 조건으로 index를 걸어야함
//            def keywordListObj = KeywordList.findByKeywordNameAndKeywordType(keywordName, keyword.getKeywordType())
//            def keywordListInstance
//            if(keywordListObj != null){
//                keywordListInstance = keywordListObj
//                keywordListInstance.setKeywordId(keywordListObj.getKeywordId())
//                keywordListInstance.setKeywordCount(keywordListObj.getKeywordCount() + 1)
//            } else {
//                keywordListInstance = new KeywordList()
//            }
//            keywordListInstance.setKeywordName(keywordName)
//            keywordListInstance.setKeywordType(keyword.getKeywordType())
//            save(keywordListInstance)
//
//            Keyword saveKeywordInstance = new Keyword()
//            saveKeywordInstance.setKeywordId(keywordListInstance.getKeywordId())
//            saveKeywordInstance.setQaId(keyword.getQaId())
//            saveKeywordInstance.setKeywordType(keyword.getKeywordType())
//            saveKeywordInstance.setKeywordName(keywordName)
//            saveKeywordInstance.insertDate = new Date()
//            saveKeywordInstance.updateDate = new Date()
//            saveKeywordInstance.save(flush: true, failOnError: true)
//        }
//    }

    def keywordCheck(qaContentInstance, keywordType){
        for(keyword in qaContentInstance.keywords){
            def keywordName = keyword.keywordName
            // TODO List KeywordList table에 아래의 조건으로 index를 걸어야함
            def keywordListObj = KeywordList.findByKeywordNameAndKeywordType(keywordName, keywordType)
            if(keywordListObj == null){
                keywordListObj = new KeywordList()
                keywordListObj.setKeywordName(keywordName)
                keywordListObj.setKeywordType(keywordType)
            } else {
                keywordListObj.keywordCount = keywordListObj.getKeywordCount() + 1
            }
            save(keywordListObj)
        }
    }

    def save(def keywordList) {
        keywordList.save(failOnError:true)
    }

}

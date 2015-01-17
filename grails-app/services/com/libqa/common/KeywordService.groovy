package com.libqa.common

import com.libqa.qa.QaContent
import com.libqa.space.Space
import com.libqa.wiki.Wiki
import grails.transaction.Transactional

@Transactional
class KeywordService {

    def saveKeyword(Object obj, List<Keyword> keywords) {
        if (obj instanceof Space) {
            log.info("#SPACE object")
        } else if (obj instanceof QaContent) {
            log.info("#QaContent object")
        } else if (obj instanceof Wiki) {
            log.info("#Wiki object")
        }
    }
}

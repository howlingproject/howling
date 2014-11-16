package com.libqa.qa

import grails.transaction.Transactional

class QaContentService {

    @Transactional
    def save(def qaContent) {
        qaContent.insertDate = new Date()
        qaContent.updateDate = new Date()
        qaContent.save(flush:true, failOnError:true)
    }
}

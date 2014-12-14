package com.libqa.feed

import grails.transaction.Transactional

@Transactional
class FeedReplyService {

    @Transactional
    def save(FeedReply feedReply) {
        feedReply.insertDate = new Date()
        feedReply.updateDate = new Date()
        feedReply.save(flush:true, failOnError:true)
    }
}

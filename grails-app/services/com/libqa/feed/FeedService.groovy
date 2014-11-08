package com.libqa.feed
import grails.transaction.Transactional

class FeedService {

    @Transactional
    def save(def feed) {
        feed.insertDate = new Date()
        feed.save(flush:true)
    }
}




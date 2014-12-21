package com.libqa.feed
import grails.transaction.Transactional

class FeedService {

    @Transactional
    def save(feed) {
        feed.insertDate = new Date()
        feed.save(flush:true, failOnError:true)
    }

    def deleteBy(feedId) {
        def feedInstance = Feed.get(feedId);
        feedInstance.delete(flush: true);
    }
}




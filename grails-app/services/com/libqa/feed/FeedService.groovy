package com.libqa.feed
import grails.transaction.Transactional

class FeedService {

    @Transactional
    def save(feed) {
        feed.insertDate = new Date()
        for (FeedFile feedFile : feed.feedFiles) {
            feedFile.insertDate = new Date()
            feedFile.downloadCount = 0
            feedFile.insertUserId = 1234
            feedFile.feedId = 99999999
            feedFile.userId = feed.userId
        }

        if(!feed.save(flush: true, failOnError:true)) {
            throw RuntimeException("Failed to save feed")
        }
    }

    def deleteBy(feedId) {
        // TODO is_deleted 형태로 바꿔야함.
        def feedInstance = Feed.get(feedId);
        feedInstance.delete(flush: true);
    }
}




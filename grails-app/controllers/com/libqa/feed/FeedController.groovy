package com.libqa.feed

import grails.converters.JSON

class FeedController {
    static layout = 'main'
    static allowedMethods = [save: "POST", delete: "POST"]
    def feedService

    def main() {
        log.debug("Main page is called!")
    }

    def save() {
        Feed feedInstance = new Feed(params)
        feedInstance.userNick = 'sjune'
        feedInstance.userId = 1234
        feedInstance.insertUserId = 1234
        feedInstance.updateUserId = 1234
        feedInstance.sharedResponseId = 1234
        feedInstance.feedUrl = 'http://www.google.com'

        try {
            feedService.save(feedInstance)
            render ([ 'success': true ]) as JSON
        } catch(Exception e) {
            log.error(feedInstance.getErrors())
            render ([ success: false, message: 'failed to save' ]) as JSON
        }
    }

    def delete() {
        try {
            feedService.deleteBy(params.feedId);
            render ([ 'success': true ]) as JSON
        } catch(Exception e) {
            log.error(e.getMessage())
            render ([ success: false, message: "failed to delete" ]) as JSON
        }
    }

    def show(Long feedId) {
        render ([ success: true, data: Feed.findByFeedId(feedId) as JSON ]) as JSON
    }

    def list() {
        render ([ success: true, data: Feed.findAll() as JSON ]) as JSON
    }

}

package com.libqa.feed

import grails.converters.JSON

class FeedController {
    static layout = 'main'
    static allowedMethods = [save: "POST", delete: "DELETE"]
    def feedService

    def main() {
        log.debug("Main page is called!")
    }

    def save() {
        Feed feed = new Feed(params)
        feed.userNick = 'sjune'
        feed.userId = 1234
        feed.insertUserId = 1234
        feed.updateUserId = 1234
        feed.sharedResponseId = 1234
        feed.feedUrl = 'http://www.daum.net'
        feedService.save(feed)

        if(feed.hasErrors()) {
            log.error(feed.getErrors())
            render ([ 'success': false, message: feed.getErrors() ]) as JSON
        }

        render ([ 'success': true ]) as JSON
    }
}

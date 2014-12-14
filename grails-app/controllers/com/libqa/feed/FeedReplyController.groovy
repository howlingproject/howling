package com.libqa.feed

import com.libqa.application.web.ResponseData

class FeedReplyController {
    static allowedMethods = [save: "POST"]
    def feedReplyService

    def save() {
        def feedReplyInstance = new FeedReply(params)
        feedReplyInstance.userNick = 'sjune'
        feedReplyInstance.userId = 1234
        feedReplyInstance.insertUserId = 1234
        feedReplyInstance.updateUserId = 1234

        try {
            feedReplyService.save(feedReplyInstance)
            log.error('11122222222')
            render(contentType: "application/json") {
                ResponseData.success()
            }
        } catch (Exception e) {
            log.error('111')
            log.error(feedReplyInstance.getErrors())
            render(contentType: "application/json") {
                ResponseData.fail('failed to save')
            }
        }
    }
}

package com.libqa.feed

import com.libqa.application.web.ResponseData

class FeedController {
    static layout = 'main'
    static allowedMethods = [save: "POST"]
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

        try {
            feedService.save(feedInstance)
            render(contentType: "application/json") {
                ResponseData.success()
            }
        } catch (Exception e) {
            log.error(feedInstance.getErrors())
            render(contentType: "application/json") {
                ResponseData.fail('failed to save')
            }
        }
    }

    def delete() {
        try {
            log.error(params.feedId)
            feedService.deleteBy(params.feedId);
            render(contentType: "application/json") {
                ResponseData.success()
            }
        } catch (Exception e) {
            log.error(e.getMessage())
            render(contentType: "application/json") {
                ResponseData.fail('failed to delete')
            }
        }
    }

    def list() {
        render(
            template: 'template/list',
            model: [
                feedList: Feed.listOrderByFeedId([max: 10, sort: "feedId", order: "desc", offset: 0])
            ]
        )
    }
}

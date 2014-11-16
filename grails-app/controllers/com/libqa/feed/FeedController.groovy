package com.libqa.feed

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
            render(contentType: "application/json") {
                [success: true]
            }
        } catch(Exception e) {
            log.error(feedInstance.getErrors())
            render(contentType: "application/json") {
                [
                    success: false,
                    message: 'failed to save'
                ]
            }
        }

    }

    def delete() {
        try {
            feedService.deleteBy(params.feedId);
            render(contentType: "application/json") {
                [success: true]
            }
        } catch(Exception e) {
            log.error(e.getMessage())
            render(contentType: "application/json") {
                [
                    success: false,
                    message: 'failed to delete'
                ]
            }
        }
    }

    def show(Long feedId) {
        render(contentType: "application/json") {
            [
                success: true,
                data: Feed.findByFeedId(feedId)
            ]
        }
    }

    def list() {
        render(contentType: "application/json") {
            [
                success: true,
                data: Feed.findAll()
            ]
        }
    }
}

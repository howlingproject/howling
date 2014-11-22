package com.libqa.feed

import com.libqa.application.web.AjaxResult

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

        try {
            feedService.save(feedInstance)
            render(contentType: "application/json") {
                AjaxResult.success()
            }
        } catch(Exception e) {
            log.error(feedInstance.getErrors())
            render(contentType: "application/json") {
                AjaxResult.fail('failed to save')
            }
        }

    }

    def delete() {
        try {
            feedService.deleteBy(params.feedId);
            render(contentType: "application/json") {
                AjaxResult.success()
            }
        } catch(Exception e) {
            log.error(e.getMessage())
            render(contentType: "application/json") {
                AjaxResult.fail('failed to delete')
            }
        }
    }

    def show(Long feedId) {
        render(contentType: "application/json") {
            AjaxResult.successWithData(Feed.findByFeedId(feedId))
        }
    }

    def list() {
        render(contentType: "application/json") {
            AjaxResult.successWithData(Feed.listOrderByFeedId(10,  order: "desc"))
        }
    }
}

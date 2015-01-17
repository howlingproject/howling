package com.libqa.wiki

import com.libqa.application.web.ResponseData

class WikiController {
    static layout = 'main'
    static allowedMethods = [save : "POST"]
    def wikiService

    def main() {
        layout = 'main';
        log.debug("Wiki Main page is called!")
    }

    def view() {
        layout = 'main';
        log.debug("Wiki view page is called!")
    }

    def write() {
        layout = 'popup2';
        log.debug("Wiki write page is called!")
    }

    def save(){
        Wiki wikiInstance = new Wiki(params);
        wikiInstance.userId = 'ganji'
        wikiInstance.userNick = '간지'
        wikiInstance.currentIp = '192.0.0.1'
        wikiInstance.passwd = '1234'
        wikiInstance.spaceId = 1

        try{
            wikiService.save(wikiInstance);
            render(contentType: "application/json") {
                ResponseData.success();
            }
        }catch (Exception e){
            log.error(wikiInstance.getErrors())
            render(contentType: "application/json") {
                ResponseData.fail(e.message);
            }
        }

    }

    def allList(){
        render(
            template: 'template/allList',
            model: [
                wikiList: Wiki.listOrderByWikiId([max: 5, sort: "wikiId", order: "desc", offset: 0])
            ]
        )
    }

}

package com.libqa.space

import com.libqa.application.web.ResponseData

class SpaceController {

    static layout = 'main'
    static allowedMethods = [save:"POST", delete:"POST"]

    def spaceService

//    def space() {
//        log.debug("SpaceController space main!")
//    }
//

    /**
     * 공간 메인
     * @return
     */
    def main() {
        log.debug("SpaceController main!")
        def allSpaces = Space.list()
        [allSpaces:allSpaces]
    }

    def form() {
        log.debug("SpaceController form!")
        // render(view:"/space/form")
        // redirect(action:detailView, params:[myparam:"param1"])
    }

    /**
     * 기본형 공간 메인
     */
    def center() {
        log.debug("SpaceController center!")
    }

    def left() {
        log.debug("SpaceController left!")
    }

    def right() {
        log.debug("SpaceController right!")
    }

    def current = {
        log.debug("##### spaceController current in ")
        log.debug(Space.count())
        def allSpaces = Space.list()
        [allSpaces:allSpaces]
    }

    def save() {
        Space space = new Space(params)
        log.debug("@ params = " + params)
        space.insertDate = new Date()
        space.insertUserId = 1
        space.description = " "
        space.titleImagePath = " "
        space.updateDate = new Date();
        space.updateUserId = 1

        try {
            log.debug("11")
            spaceService.saveSpace(space)
            render(contentType: "application/json") {
                ResponseData.success()
            }
        } catch(Exception e) {
            log.error("Error 발생 : " + space.getErrors())
            render(contentType: "application/json") {
                ResponseData.fail('failed to save')
            }
        }
        /*
        render (contentType: "application/json") {
            [
                'success': true,
                'data': space
            ]
        }
        */
    }

}

package com.libqa.space

import com.libqa.application.enums.KeywordTypeEnum
import com.libqa.application.web.ResponseData

class SpaceController {

    static layout = 'main'
    static allowedMethods = [save:"POST", delete:"POST"]

    def KeywordTypeEnum
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
        /*
        log.debug("SpaceController form!")
        log.debug("## keywordType : " + KeywordTypeEnum.SPACE)
        log.debug("## keywordType : " + KeywordTypeEnum.SPACE.name())
        log.debug("## keywordType : " + KeywordTypeEnum.SPACE.value())
        def keywordType = KeywordTypeEnum.SPACE.name()
        */



        [keywordType:"SPACE"]
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

    def files() {
        log.debug("SpaceController file!")
    }
    def ajaxUpload() {
        log.debug("SpaceController ajaxUpload!")
    }

    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def fileName = file.originalFilename
            log.debug("### file name : " + file.originalFilename)
            def webrootDir = servletContext.getRealPath("/") //app directory
            log.debug("### webrootDir : " + webrootDir)
            File fileDest = new File(webrootDir,"user_images/user_id/"+fileName)
            log.debug("### fileDest : " + fileDest)
            file.transferTo(fileDest)
        }
        redirect (action:'files')
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
        log.debug("@ space = " + space)
        Date now = new Date();
        space.insertDate = now
        space.insertUserId = 1
        space.updateUserId = 1
        space.updateDate = now

        try {
            spaceService.saveSpace(space)
            render(contentType: "application/json") {
                ResponseData.success()
            }
        } catch (Exception e) {
            log.error("## Trace : " + space.getErrors())
            log.error("## Error message 발생 : " + e.message)
            render(contentType: "application/json") {
                ResponseData.fail('failed to save : 에러가 발생했습니다.')
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

package com.libqa.space

import grails.transaction.Transactional

@Transactional
class SpaceService {

    def saveSpace(Space space) {
        log.debug("------------ SpaceService : "+ space)
        space.save(flush: true, failOnError: true)
    }

    def checkTitle() {
    }

}

package com.libqa.space

import grails.transaction.Transactional

@Transactional
class SpaceService {

    def save(def space) {
        log.debug("#### SpaceService : {}", space)
    }

    def checkTitle() {

    }

}

package com.libqa.space

class SpaceController {

    static layout = 'main'

//    def space() {
//        log.debug("SpaceController space main!")
//    }
//
//    def form() {
//        log.debug("SpaceController form!")
//    }

    def main() {
        def allSpaces = Space.list()
        [allSpaces:allSpaces]
//        log.debug("SpaceController main!")
    }

    def current = {
        log.debug("##### spaceController current in ")
        def allSpaces = Space.list()
        log.debug("##### allSpaces = {}", allSpaces)
        [allSpaces:allSpaces]
    }
}

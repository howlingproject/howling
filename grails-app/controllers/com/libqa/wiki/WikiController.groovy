package com.libqa.wiki

class WikiController {
    static layout = 'main'

    def main() {
        log.debug("Wiki Main page is called!")
    }

    def view() {
        log.debug("Wiki view page is called!")
    }

    def write() {
        log.debug("Wiki write page is called!")
    }

}

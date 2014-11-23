package com.libqa.wiki

class WikiController {
    static layout = 'main'

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

}

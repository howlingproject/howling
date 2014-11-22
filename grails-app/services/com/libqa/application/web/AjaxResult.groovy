package com.libqa.application.web

class AjaxResult {
    def success
    def message
    def data

    AjaxResult(success, message) {
        this.success = success
        this.message = message
    }

    AjaxResult(success) {
        this.success = success
    }

    static success() {
        new AjaxResult(true)
    }

    static fail(message) {
        new AjaxResult(false, message)
    }

    static def successWithData(def data) {
        def result = new AjaxResult(true)
        result = data;
    }
}

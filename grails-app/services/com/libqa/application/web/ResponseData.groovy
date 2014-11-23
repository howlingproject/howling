package com.libqa.application.web

class ResponseData {
    def success
    def message
    def data            // result object
    def code            // http status code

    ResponseData(success, message) {
        this.success = success
        this.message = message
    }

    ResponseData(success, message, code, data) {
        this.success = success
        this.message = message
        this.code = code
        this.data = data
    }

    ResponseData(success) {
        this.success = success
    }

    static success() {
        new ResponseData(true)
    }

    static fail(message) {
        new ResponseData(false, message)
    }

    static def result(def data) {
        def result = new ResponseData(true)
        result = data;
    }
}

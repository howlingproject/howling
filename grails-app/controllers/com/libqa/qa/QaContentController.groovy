package com.libqa.qa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QaContentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond QaContent.list(params), model:[qaContentInstanceCount: QaContent.count()]
    }

    def show(QaContent qaContentInstance) {
        respond qaContentInstance
    }

    def create() {
        respond new QaContent(params)
    }

    @Transactional
    def save(QaContent qaContentInstance) {
        if (qaContentInstance == null) {
            notFound()
            return
        }

        if (qaContentInstance.hasErrors()) {
            respond qaContentInstance.errors, view:'create'
            return
        }

        qaContentInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'qaContentInstance.label', default: 'QaContent'), qaContentInstance.id])
                redirect qaContentInstance
            }
            '*' { respond qaContentInstance, [status: CREATED] }
        }
    }

    def edit(QaContent qaContentInstance) {
        respond qaContentInstance
    }

    @Transactional
    def update(QaContent qaContentInstance) {
        if (qaContentInstance == null) {
            notFound()
            return
        }

        if (qaContentInstance.hasErrors()) {
            respond qaContentInstance.errors, view:'edit'
            return
        }

        qaContentInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'QaContent.label', default: 'QaContent'), qaContentInstance.id])
                redirect qaContentInstance
            }
            '*'{ respond qaContentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(QaContent qaContentInstance) {

        if (qaContentInstance == null) {
            notFound()
            return
        }

        qaContentInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'QaContent.label', default: 'QaContent'), qaContentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'qaContentInstance.label', default: 'QaContent'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

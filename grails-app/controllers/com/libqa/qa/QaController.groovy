package com.libqa.qa

class QaController {
    static layout = 'main'
    def qaContentService

    def main(){

    }
    def my(){

    }
    def view(){

    }
    def create(){
        respond new QaContent(params)
    }
    def save(){
        try {
            QaContent qaContentInstance = new QaContent(params)
            qaContentInstance.userId = 9876
            qaContentInstance.userNick = '용퓌'
            qaContentInstance.insertUserId = 765
            qaContentInstance.updateUserId = 543
            qaContentService.save(qaContentInstance)
            render(contentType: 'application/json'){
                [ success: true ]
            }
        } catch (Exception e){
            render(contentType: 'application/json'){
                [ success: false, message: qaContent.getErrors() ]
            }
        }
    }
//    def main() {
//        log.debug("Qa Main page is called!")
//    }
//
//    def my() {
//        log.debug("Qa my page is called!")
//    }
//
//    def view() {
//        log.debug("Qa view page is called!")
//    }
}

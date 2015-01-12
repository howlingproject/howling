package com.libqa.qa

import com.libqa.application.enums.KeywordTypeEnum

class QaController {
    static layout = 'main'
    static allowedMethods = [save: "POST"]
    def qaContentService

    def main(){

    }
    def my(){
        ['myQaContentList' : QaContent.findByUserId(9876)]
        ['myQaReplyList' : QaReply.findByUserId(9876)]
//        ['keyWordList' : Keywods.findByUserId(9876)]
    }
    def view(Long qaId){
        ['qaContent' : QaContent.findByQaId(qaId)]
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
            qaContentService.saveWithKeyword(qaContentInstance)

            render(contentType: 'application/json'){
                [ success: true, qaId: qaContentInstance.qaId  ]
            }
        } catch (Exception e){
            e.printStackTrace()
            render(contentType: 'application/json'){
                [ success: false, message: e.getMessage() ]
            }
        }
    }
}

package com.libqa.common

class KeywordListController {

    // 1. keywordlist select
    // 2. keywordlist cnt check
    // 3. keywordlist cnt = 0
    //      then keywordlist insert
    //      return keywordId
    // 4. keywordlist cnt != 0 ==
    //      then keywordlist cnt update
    //      return keywordId
    def keywordListService

    def categorizeKeywordList(){
        try {
            def categorizeKeywordObj = keywordListService.categorizeKeywordList(params.keywordType)
//        render categorizeKeywordObj as JSON
            render(
                    template: '/common/template/keywordList',
                    model: [categorizeKeywordList: categorizeKeywordObj]
            )
        }catch(e){
            log.debug(e)
        }
    }
    def keywordCheck(params) {
        keywordListService.keywordCheck(params)
    }
}

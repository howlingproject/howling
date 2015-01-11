package com.libqa.application.enums

/**
 * Created by yong on 2014. 11. 2..
 */
public enum KeywordTypeEnum {

    WIKI("위키"),
    SPACE("공간"),
    QA("QA")

    String type

    private KeywordTypeEnum(String type) {
        this.type = type
    }

    def String toString() { return this.type }

    static list() {
        [WIKI, SPACE, QA]
    }
}
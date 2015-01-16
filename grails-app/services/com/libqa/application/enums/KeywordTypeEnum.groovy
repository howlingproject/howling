package com.libqa.application.enums

/**
 * Created by yong on 2014. 11. 2..
 */
public enum KeywordTypeEnum {

    WIKI("위키"),
    SPACE("공간"),
    QA("QA")

    private final String value

    private KeywordTypeEnum(String value) {
        this.value = value
    }

    String value() { value }


}
package com.libqa.application.enums

public enum SharedContentsTypeEnum {
    FB("Facebook"),
    TW("Twitter"),
    GP("GooglePlus")

    String type

    private SharedContentsTypeEnum(String type) {
        this.type = type
    }

    def String toString() { return this.type }

    static list() {
        [FB, TW, GP]
    }
}

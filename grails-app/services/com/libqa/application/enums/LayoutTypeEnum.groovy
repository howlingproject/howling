package com.libqa.application.enums

public enum LayoutTypeEnum {

    LEFT("LEFT"),
    RIGHT("RIGHT"),
    DEFAULT("DEFAULT")

    LayoutTypeEnum(String value) {
        this.value = value
    }

    private String value

    public String  Value() {
        return value
    }
}
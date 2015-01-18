package com.libqa.space

import org.codehaus.groovy.grails.exceptions.GrailsException

/**
 * Created by yion on 2015. 1. 18..
 */
class KeywordException extends RuntimeException {

    /**
     * Constructs a {@code NullPointerException} with no detail message.
     */
    public KeywordException() {
        super();
    }

    /**
     * Constructs a {@code NullPointerException} with the specified
     * detail message.
     *
     * @param   s   the detail message.
     */
    public KeywordException(String s) {
        super(s);
    }
}

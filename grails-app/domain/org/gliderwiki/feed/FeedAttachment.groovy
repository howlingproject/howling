package org.gliderwiki.feed

class FeedAttachment {
    Long attachmentId
    String fileName
    Long fileSize
    String fileType
    Integer downloadCount
    Date insertDate
    Date updateDate
    Long feedId

    static constraints = {
    }
}

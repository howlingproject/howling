package org.gliderwiki.wiki

class AttachedFile {

    Long spaceid
    Long userId
    char isDeleted // (Y,N)
    Date InsertDate
    Date UpdateDate

    static constraints = {
    }
}

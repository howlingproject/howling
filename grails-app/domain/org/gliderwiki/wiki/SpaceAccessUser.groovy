package org.gliderwiki.wiki

class SpaceAccessUser {

    Long spaceid
    Long userId
    char isDeleted // (Y,N)
    Date InsertDate
    Date UpdateDate

    static constraints = {
    }
}

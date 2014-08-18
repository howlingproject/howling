package com.libqa.feed



import grails.test.mixin.*
import spock.lang.*

@TestFor(FeedController)
@Mock(Feed)
class FeedControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.feedInstanceList
            model.feedInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.feedInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def feed = new Feed()
            feed.validate()
            controller.save(feed)

        then:"The create view is rendered again with the correct model"
            model.feedInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            feed = new Feed(params)

            controller.save(feed)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/feed/show/1'
            controller.flash.message != null
            Feed.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def feed = new Feed(params)
            controller.show(feed)

        then:"A model is populated containing the domain instance"
            model.feedInstance == feed
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def feed = new Feed(params)
            controller.edit(feed)

        then:"A model is populated containing the domain instance"
            model.feedInstance == feed
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/feed/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def feed = new Feed()
            feed.validate()
            controller.update(feed)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.feedInstance == feed

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            feed = new Feed(params).save(flush: true)
            controller.update(feed)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/feed/show/$feed.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/feed/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def feed = new Feed(params).save(flush: true)

        then:"It exists"
            Feed.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(feed)

        then:"The instance is deleted"
            Feed.count() == 0
            response.redirectedUrl == '/feed/index'
            flash.message != null
    }
}

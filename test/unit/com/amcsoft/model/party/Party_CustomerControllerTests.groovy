package com.amcsoft.model.party



import org.junit.*
import grails.test.mixin.*

/**
 * Party_CustomerControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(Party_CustomerController)
@Mock(Party_Customer)
class Party_CustomerControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/party_Customer/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.party_CustomerInstanceList.size() == 0
        assert model.party_CustomerInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.party_CustomerInstance != null
    }

    void testSave() {
        controller.save()

        assert model.party_CustomerInstance != null
        assert view == '/party_Customer/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/party_Customer/show/1'
        assert controller.flash.message != null
        assert Party_Customer.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/party_Customer/list'


        populateValidParams(params)
        def party_Customer = new Party_Customer(params)

        assert party_Customer.save() != null

        params.id = party_Customer.id

        def model = controller.show()

        assert model.party_CustomerInstance == party_Customer
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/party_Customer/list'


        populateValidParams(params)
        def party_Customer = new Party_Customer(params)

        assert party_Customer.save() != null

        params.id = party_Customer.id

        def model = controller.edit()

        assert model.party_CustomerInstance == party_Customer
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/party_Customer/list'

        response.reset()


        populateValidParams(params)
        def party_Customer = new Party_Customer(params)

        assert party_Customer.save() != null

        // test invalid parameters in update
        params.id = party_Customer.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/party_Customer/edit"
        assert model.party_CustomerInstance != null

        party_Customer.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/party_Customer/show/$party_Customer.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        party_Customer.clearErrors()

        populateValidParams(params)
        params.id = party_Customer.id
        params.version = -1
        controller.update()

        assert view == "/party_Customer/edit"
        assert model.party_CustomerInstance != null
        assert model.party_CustomerInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/party_Customer/list'

        response.reset()

        populateValidParams(params)
        def party_Customer = new Party_Customer(params)

        assert party_Customer.save() != null
        assert Party_Customer.count() == 1

        params.id = party_Customer.id

        controller.delete()

        assert Party_Customer.count() == 0
        assert Party_Customer.get(party_Customer.id) == null
        assert response.redirectedUrl == '/party_Customer/list'
    }
}

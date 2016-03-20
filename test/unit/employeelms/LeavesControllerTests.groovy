package employeelms



import org.junit.*
import grails.test.mixin.*

@TestFor(LeavesController)
@Mock(Leaves)
class LeavesControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/leaves/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.leavesInstanceList.size() == 0
        assert model.leavesInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.leavesInstance != null
    }

    void testSave() {
        controller.save()

        assert model.leavesInstance != null
        assert view == '/leaves/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/leaves/show/1'
        assert controller.flash.message != null
        assert Leaves.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/leaves/list'

        populateValidParams(params)
        def leaves = new Leaves(params)

        assert leaves.save() != null

        params.id = leaves.id

        def model = controller.show()

        assert model.leavesInstance == leaves
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/leaves/list'

        populateValidParams(params)
        def leaves = new Leaves(params)

        assert leaves.save() != null

        params.id = leaves.id

        def model = controller.edit()

        assert model.leavesInstance == leaves
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/leaves/list'

        response.reset()

        populateValidParams(params)
        def leaves = new Leaves(params)

        assert leaves.save() != null

        // test invalid parameters in update
        params.id = leaves.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/leaves/edit"
        assert model.leavesInstance != null

        leaves.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/leaves/show/$leaves.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        leaves.clearErrors()

        populateValidParams(params)
        params.id = leaves.id
        params.version = -1
        controller.update()

        assert view == "/leaves/edit"
        assert model.leavesInstance != null
        assert model.leavesInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/leaves/list'

        response.reset()

        populateValidParams(params)
        def leaves = new Leaves(params)

        assert leaves.save() != null
        assert Leaves.count() == 1

        params.id = leaves.id

        controller.delete()

        assert Leaves.count() == 0
        assert Leaves.get(leaves.id) == null
        assert response.redirectedUrl == '/leaves/list'
    }
}

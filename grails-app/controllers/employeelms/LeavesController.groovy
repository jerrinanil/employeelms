package employeelms

import org.springframework.dao.DataIntegrityViolationException

class LeavesController {

    def springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
       params.max = Math.min(max ?: 10, 100)
		[leavesInstanceList: Leaves.list(params), leavesInstanceTotal: Leaves.count()]
    }
	
	def leaveslist(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		[leavesInstanceList: Leaves.list(params), leavesInstanceTotal: Leaves.count()]
	}

	def leaves() {
		
		def user = springSecurityService.currentUser
		
	
		[leavesInstance: new Leaves(params), currentUserInstance:user]
	}
    def create() {
        [leavesInstance: new Leaves(params)]
    }

    def save() {
        def leavesInstance = new Leaves(params)
        if (!leavesInstance.save(flush: true)) {
            render(view: "create", model: [leavesInstance: leavesInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'leaves.label', default: 'Leaves'), leavesInstance.id])
        redirect(action: "show", id: leavesInstance.id)
    }

    def show(Long id) {
        def leavesInstance = Leaves.get(id)
        if (!leavesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'leaves.label', default: 'Leaves'), id])
            redirect(action: "list")
            return
        }

        [leavesInstance: leavesInstance]
    }

    def edit(Long id) {
        def leavesInstance = Leaves.get(id)
        if (!leavesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'leaves.label', default: 'Leaves'), id])
            redirect(action: "list")
            return
        }

        [leavesInstance: leavesInstance]
    }

    def update(Long id, Long version) {
        def leavesInstance = Leaves.get(id)
        if (!leavesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'leaves.label', default: 'Leaves'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (leavesInstance.version > version) {
                leavesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'leaves.label', default: 'Leaves')] as Object[],
                          "Another user has updated this Leaves while you were editing")
                render(view: "edit", model: [leavesInstance: leavesInstance])
                return
            }
        }

        leavesInstance.properties = params

        if (!leavesInstance.save(flush: true)) {
            render(view: "edit", model: [leavesInstance: leavesInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'leaves.label', default: 'Leaves'), leavesInstance.id])
        redirect(action: "show", id: leavesInstance.id)
    }

    def delete(Long id) {
        def leavesInstance = Leaves.get(id)
        if (!leavesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'leaves.label', default: 'Leaves'), id])
            redirect(action: "list")
            return
        }

        try {
            leavesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'leaves.label', default: 'Leaves'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'leaves.label', default: 'Leaves'), id])
            redirect(action: "show", id: id)
        }
    }
}

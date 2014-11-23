package commissions


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GeographicalLocatorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GeographicalLocator.list(params), model: [geographicalLocatorInstanceCount: GeographicalLocator.count()]
    }

    def show(GeographicalLocator geographicalLocatorInstance) {
        respond geographicalLocatorInstance
    }

    def create() {
        respond new GeographicalLocator(params)
    }

    @Transactional
    def save(GeographicalLocator geographicalLocatorInstance) {
        if (geographicalLocatorInstance == null) {
            notFound()
            return
        }

        if (geographicalLocatorInstance.hasErrors()) {
            respond geographicalLocatorInstance.errors, view: 'create'
            return
        }

        geographicalLocatorInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'geographicalLocator.label', default: 'GeographicalLocator'), geographicalLocatorInstance.id])
                redirect geographicalLocatorInstance
            }
            '*' { respond geographicalLocatorInstance, [status: CREATED] }
        }
    }

    def edit(GeographicalLocator geographicalLocatorInstance) {
        respond geographicalLocatorInstance
    }

    @Transactional
    def update(GeographicalLocator geographicalLocatorInstance) {
        if (geographicalLocatorInstance == null) {
            notFound()
            return
        }

        if (geographicalLocatorInstance.hasErrors()) {
            respond geographicalLocatorInstance.errors, view: 'edit'
            return
        }

        geographicalLocatorInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GeographicalLocator.label', default: 'GeographicalLocator'), geographicalLocatorInstance.id])
                redirect geographicalLocatorInstance
            }
            '*' { respond geographicalLocatorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GeographicalLocator geographicalLocatorInstance) {

        if (geographicalLocatorInstance == null) {
            notFound()
            return
        }

        geographicalLocatorInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GeographicalLocator.label', default: 'GeographicalLocator'), geographicalLocatorInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'geographicalLocator.label', default: 'GeographicalLocator'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}

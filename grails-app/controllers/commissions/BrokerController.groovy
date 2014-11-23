package commissions



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BrokerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Broker.list(params), model:[brokerInstanceCount: Broker.count()]
    }

    def show(Broker brokerInstance) {
        respond brokerInstance
    }

    def create() {
        respond new Broker(params)
    }

    @Transactional
    def save(Broker brokerInstance) {
        if (brokerInstance == null) {
            notFound()
            return
        }

        if (brokerInstance.hasErrors()) {
            respond brokerInstance.errors, view:'create'
            return
        }

        brokerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'broker.label', default: 'Broker'), brokerInstance.id])
                redirect brokerInstance
            }
            '*' { respond brokerInstance, [status: CREATED] }
        }
    }

    def edit(Broker brokerInstance) {
        respond brokerInstance
    }

    @Transactional
    def update(Broker brokerInstance) {
        if (brokerInstance == null) {
            notFound()
            return
        }

        if (brokerInstance.hasErrors()) {
            respond brokerInstance.errors, view:'edit'
            return
        }

        brokerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Broker.label', default: 'Broker'), brokerInstance.id])
                redirect brokerInstance
            }
            '*'{ respond brokerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Broker brokerInstance) {

        if (brokerInstance == null) {
            notFound()
            return
        }

        brokerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Broker.label', default: 'Broker'), brokerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'broker.label', default: 'Broker'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

import employeelms.SecRole
import employeelms.SecUser
import employeelms.SecUserSecRole

class BootStrap {
    def init = { servletContext ->
        SecUser admin = new SecUser(username:'admin', password:'secret', enabled:true).save()
		def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
		def moderatorRole = SecRole.findByAuthority('ROLE_MODERATOR') ?: new SecRole(authority:'ROLE_MODERATOR').save(failOnError: true)
       
        SecUserSecRole.create(admin, adminRole)
        SecUserSecRole.create(admin, userRole)
       
    }
    def destroy = {
    }
}
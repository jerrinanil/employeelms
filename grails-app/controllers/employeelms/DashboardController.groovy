package employeelms
import grails.plugins.springsecurity.Secured


class DashboardController {

	@Secured(['IS_AUTHENTICATED_FULLY'])
	def index() {
		if (isLoggedIn()) {
			 
			 def user = springSecurityService.currentUser
			 
			 
			[user:user]
		 }
   
		
		
	}
	@Secured(['IS_AUTHENTICATED_FULLY'])
	def dashboard() {
		if (isLoggedIn()) {
			 SecUser user = getAuthenticatedUser()
			 
			[user:user]
		 }
   
		
		
	}
	
	
}

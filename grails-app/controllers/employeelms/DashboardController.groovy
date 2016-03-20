package employeelms
import grails.plugins.springsecurity.Secured


class DashboardController {

	@Secured(['IS_AUTHENTICATED_FULLY'])
	def index() {
		if (isLoggedIn()) {
			 redirect(action: "dashboard")
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

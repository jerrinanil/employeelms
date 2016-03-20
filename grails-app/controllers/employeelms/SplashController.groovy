package employeelms
import grails.plugins.springsecurity.Secured
class SplashController {


	@Secured(['ROLE_ROYALTY'])
	def splashlogin() { }
}

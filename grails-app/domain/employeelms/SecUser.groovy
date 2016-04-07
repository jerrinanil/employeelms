package employeelms

import java.math.BigDecimal;
import java.util.Date;

class SecUser {

	transient springSecurityService

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	int employeeId
	String name
	String email
	String primaryRole
	String function
	String phone
	String title
	Date joiningDate
	String location
	BigDecimal basicPay
	int totalOvertime
	
	static hasMany=[
		leaves:Leaves,
		attendance:Attendance
	]

	String toString(){
		"${name}"
	}

	static constraints = {
		username blank: false, unique: true
		password blank: false
		
		email email: true, nullable: true, unique: true
		

		employeeId nullable: true, unique: true
		
		phone nullable: true
		name nullable: true
		
		joiningDate nullable: true
		basicPay nullable: true
		totalOvertime nullable: true
		primaryRole nullable: true
		function nullable: true
		title nullable: true
		
		location nullable: true
		
	}

	static mapping = {
		password column: '`password`'
	}

	Set<SecRole> getAuthorities() {
		SecUserSecRole.findAllBySecUser(this).collect { it.secRole } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}

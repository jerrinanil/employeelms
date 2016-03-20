package employeelms

import java.util.Date;


class Employee {
	
	
		int employeeId
		String name
		String email
		String password
		String primaryRole
		String function
		String phone
		String title
		Date joiningDate
		String location
		String organisation
		String groupName
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
		
		password size: 5..15, blank: false
		email email: true, blank: false, unique: true
		

		employeeId nullable: false, unique: true
		
		phone nullable: true
		organisation nullable: true
		groupName nullable: true
		joiningDate nullable: true
		basicPay nullable: true
		totalOvertime nullable: true
		primaryRole nullable: true
		function nullable: true
		title nullable: true
		
		location nullable: true
		
		
    }
}

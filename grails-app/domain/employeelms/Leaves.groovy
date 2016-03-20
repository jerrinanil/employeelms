package employeelms

import java.util.Date;

class Leaves {
	
	int leaveId
	Date startDate
	Date endDate
	int days
	String leaveType
	String comments
	String message
	
	static belongsTo = [employee:Employee]
	

    static constraints = {
    }
}

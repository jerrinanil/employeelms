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
	boolean approval
	
	static belongsTo = [user:SecUser]
	
	String toString(){
		"${leaveType}"+" "+"${startDate}"+" Approval :"+"${approval}";
	}
	

    static constraints = {
    }
}

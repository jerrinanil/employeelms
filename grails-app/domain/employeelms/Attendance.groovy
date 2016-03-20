package employeelms

import java.util.Date;

class Attendance {
	int attendanceID
	Date attendanceDate
	String attendanceDay
	int hours
	int overtime
	
	static belongsTo = [employee:Employee]
	
    static constraints = {
    }
}

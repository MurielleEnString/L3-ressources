import java.text.*;
import java.util.*;

public class DateInter implements Format {
	private DateFormat formatInter;
	private Date today;
	
	public DateInter() {
		today = new Date();
		formatInter = new SimpleDateFormat ("yyyy-MM-dd");
	}
	
	public String getDate() {
		String res = formatInter.format(today);
		return res;
	}
}

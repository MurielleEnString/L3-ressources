import java.text.*;
import java.util.*;

public class DateUK implements Format {
	private DateFormat formatUK;
	private Date today;
	
	public DateUK() {
		today = new Date();
		formatUK = DateFormat.getDateInstance(DateFormat.SHORT, Locale.US);
	}
	
	public String getDate() {
		String res = formatUK.format(today);
		return res;
	}
}

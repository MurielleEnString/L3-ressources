import java.text.*;
import java.util.*;

public class DateUS implements Format {
	private DateFormat formatUS;
	private Date today;
	
	public DateUS() {
		today = new Date();
		formatUS = DateFormat.getDateInstance(DateFormat.SHORT, Locale.UK);
	}
	
	public String getDate() {
		String res = formatUS.format(today);
		return res;
	}
}

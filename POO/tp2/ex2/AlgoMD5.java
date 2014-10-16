import java.security.*;

public class AlgoMD5 implements MethodeCryptage {
	private MessageDigest md;
	
	public AlgoMD5() throws Exception {
		md = MessageDigest.getInstance("MD5");
	};
	
	public String crypter(String data) {
		md.update(data.getBytes());
		try {
			return new String(md.digest(), "UTF-8");
		} catch(Exception e) {
			return data;
		}
	}	
}

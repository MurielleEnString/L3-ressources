import java.security.*;

public class AlgoSHA1 implements MethodeCryptage {
	private MessageDigest md;
	
	public AlgoSHA1() throws Exception {
		md = MessageDigest.getInstance("SHA-1");
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

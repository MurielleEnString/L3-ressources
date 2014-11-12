import java.io.*;

public class ReverseInputStream extends FilterInputStream {
	
	private final byte[] tab;
	private int posTab;
	
	public ReverseInputStream(InputStream in) throws IOException {
		super(in);
		tab = new byte[super.available()];
		super.read(tab);
		posTab = tab.length - 1;
	}
	
	public int read() throws IOException {
		int res;
		if(posTab >= 0) {
			res = tab[posTab];
			posTab--;
		} else {
			res = -1;
		}
		return res;
	}
}

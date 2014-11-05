public class InterieurCuir extends Option {
	
	public InterieurCuir(BMW b) {
		super(b);
	}
	
	public int cout() {
		return 800 + bmw.cout();
	}
	
}

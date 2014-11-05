public class GPS extends Option {
	
	public GPS(BMW b) {
		super(b);
	}
	
	public int cout() {
		return 100 + bmw.cout();
	}
	
}

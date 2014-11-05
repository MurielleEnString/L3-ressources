public class CouleurRouge extends Option {

	public CouleurRouge(BMW b) {
		super(b);
	}
	
	public int cout() {
		return 500 + bmw.cout();
	}
}

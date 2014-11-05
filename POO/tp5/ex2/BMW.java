public abstract class BMW {
	
	protected String essence;
	protected int prix;
	
	public BMW() {
		essence = "";
		prix = 0;
	}
	
	public BMW(String e, int p) {
		essence = e;
		prix = p;
	}
	
	public int cout() {
		return prix;
	}
	
}

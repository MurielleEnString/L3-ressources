public class Colombia extends Boisson {
	
	public Colombia() {
		super("Café colombia");
	}
	
	public double cout() {
		return super.cout() + indiceTaille*22;
	}
}


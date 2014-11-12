public class Deca extends Boisson {
	
	public Deca() {
		super("Café déca");
	}
	
	public double cout() {
		return super.cout() + indiceTaille*20;
	}
}

public abstract class Decorator extends Boisson {
	
	protected Boisson boisson;
	
	public Decorator(Boisson b) {
		boisson = b;
	}
	
}

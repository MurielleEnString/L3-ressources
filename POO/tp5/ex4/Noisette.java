public class Noisette extends Decorator {
	
	public Noisette(Boisson b) {
		super(b);
	}
	
	public String getDescription() {
		return boisson.getDescription() + "\n + de la noisette";
	}
	
	public double cout() {
		return boisson.cout() + boisson.indiceTaille*5;
	}
}

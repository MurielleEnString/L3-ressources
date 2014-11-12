public class Sucre extends Decorator {
	
	public Sucre(Boisson b) {
		super(b);
	}
	
	public String getDescription() {
		return boisson.getDescription() + "\n + du sucre";
	}
	
	public double cout() {
		return boisson.cout() + boisson.indiceTaille*3;
	}
	
}

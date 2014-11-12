public class Chantilly extends Decorator {
	
	public Chantilly(Boisson b) {
		super(b);
	}
	
	public String getDescription() {
		return boisson.getDescription() + "\n + de la chantilly";
	}
	
	public double cout() {
		return boisson.cout() + boisson.indiceTaille*12;
	}
}


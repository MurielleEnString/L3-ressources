public class Reine extends Personnage {
	private final boolean salope = true;
	
	public Reine(ComportementArme a) {
		super(a);
	}
	
	public void combattre() {
		arme.utiliserArme();
	}
	
	public void inceste() {
		System.out.println("Appelle son frère à l'aide");
	}
}

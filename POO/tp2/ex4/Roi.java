public class Roi extends Personnage {
	
	public Roi(ComportementArme a) {
		super(a);
	}
	
	public void combattre() {
		arme.utiliserArme();
	}
}

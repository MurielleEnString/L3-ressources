public class Chevalier extends Personnage {
	
	public Chevalier(ComportementArme a) {
		super(a);
	}
	
	public void combattre() {
		arme.utiliserArme();
	}
}

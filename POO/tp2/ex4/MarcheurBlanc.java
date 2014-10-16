public class MarcheurBlanc extends Personnage {
	
	public MarcheurBlanc(ComportementArme a) {
		super(a);
	}
	
	public void combattre() {
		arme.utiliserArme();
	}
}

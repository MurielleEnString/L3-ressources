public abstract class Personnage {
	protected ComportementArme arme;
	
	public Personnage(ComportementArme a) {
		arme = a;
	}
	
	public void combattre();

}

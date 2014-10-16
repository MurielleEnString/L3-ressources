public class Voiture implements Vehicule {
	protected Roue[] roues;
	protected Moteur moteur;
	
	public Voiture(int tailleRoue, double cylindreeMoteur) {
		Roue roue = new Roue(tailleRoue);
		this.roues[0] = roue;
		this.roues[1] = roue;
		this.roues[2] = roue;
		this.roues[3] = roue;
		this.moteur = new Moteur(cylindreeMoteur);
	}
	
	public String composition() {
		String res = "4 roues de taille " + this.roues[0].getTaille() + ", 1 moteur de cylindrée " + this.moteur.getCylindree();
		return res;
	}
	
}

public class Moto implements Vehicule {
	private Roue[] roues;
	private Moteur moteur;
	
	public Moto(int tailleRoue, double cylindreeMoteur) {
		Roue roue = new Roue(tailleRoue);
		this.roues[0] = roue;
		this.roues[1] = roue;
		this.moteur = new Moteur(cylindreeMoteur);
	}
	
	public String composition() {
		String res = "2 roues de taille " + this.roues[0].getTaille() + ", 1 moteur de cylindrée " + this.moteur.getCylindree();
		return res;
	}
}

public class Twingo extends Voiture {
	private String couleur;
	private Personne conducteur;
	
	public Twingo(int tailleRoue, double cylindreeMoteur, String couleur, Personne conducteur) {
		super(tailleRoue, cylindreeMoteur);
		this.couleur = couleur;
		this.conducteur = conducteur;
	}
	
}

public abstract class Etat {
	protected Voiture voiture;
	
	public Etat(Voiture v) {
		voiture = v;
	}
	
	public void presserBouton() {
		System.out.println("Il ne se passe rien");
	}
	
	public void saisirAdresse() {
		System.out.println("Il ne se passe rien");
	}
	
	public void arriverDestination() {
		System.out.println("Il ne se passe rien");
	}
	
}

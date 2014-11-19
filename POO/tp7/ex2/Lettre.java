public abstract class Lettre {
	
	protected String destinataire;
	protected String marqueCarte;
	protected String description;
	
	public Lettre(String dest, String m, String desc) {
		destinataire = dest;
		marqueCarte = m;
		description = desc;
	}

	public String getMarqueCarte() {
		return marqueCarte;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void afficher() {
		System.out.println("-----------------------------------------");
		System.out.println("Lettre à destination de " + destinataire + "\n |- Carte " + marqueCarte + "\n |- Description : " + description);
	}
}

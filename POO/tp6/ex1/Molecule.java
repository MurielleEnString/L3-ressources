public class Molecule {
	private String nom;
	private String formule;
	
	public Molecule(String n, String f) {
		nom = n;
		formule = f;
	}
	
	public String getNom() {
		return nom;
	}
	
	public String getFormule() {
		return formule;
	}
	
	public void afficher() {
		System.out.println("Molécule " + nom + " : " + formule);
	}
	
}

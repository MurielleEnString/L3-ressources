public class Propriete {
	private String nom_;
	private int prix_;
	private int droits_;
	private Joueur proprio_;
	private final Etat etatLibre;
	private final Etat etatPossede;
	private Etat etatCourant;
	
	public Propriete(String n) {
		nom_ = n;
		prix_ = 100;
		droits_ = 10;
		etatLibre = new EtatLibre(this);
		etatPossede = new EtatPossede(this);
		etatCourant = etatLibre;
	}
	
	public String getNom() {
		return nom_;
	}
	
	public int getPrix() {
		return prix_;
	}
	
	public int getDroitsDePassage() {
		return droits_;
	}
	
	public Joueur getProprio() {
		return proprio_;
	}
	
	public void setProprio(Joueur j) {
		proprio_ = j;
	}
	
	public void visitePar(Joueur j) {
		System.out.print(j.getNom() + " arrive sur " + getNom());
		etatCourant.acheter(j);
		etatCourant.collecterDroitsPassage(j);
		System.out.println(j.getNom() + " a " + j.getArgent() + " euros");
	}
	
	public void liberer() {
		etatCourant.liberer();
	}
	
	public void setEtat(Etat e) {
		etatCourant = e;
	}
	
	public Etat getEtatLibre() {
		return etatLibre;
	}
	
	public Etat getEtatPossede() {
		return etatPossede;
	}
	
}
			
	

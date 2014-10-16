public class Distributeur {
	private int nbBonbons;
	private final Etat etatAttente;
	private final Etat etatAPiece;
	private final Etat etatBonbonVendu;
	private final Etat etatVide;
	private Etat etatCourant;
	
	public Distributeur(int nbB) {
		nbBonbons = nbB;
		etatAttente = new EtatAttente(this);
		etatAPiece = new EtatAPiece(this);
		etatBonbonVendu = new EtatBonbonVendu(this);
		etatVide = new EtatVide(this);
		etatCourant = etatAttente;
	}
	
	public void insererPiece() {
		etatCourant.insererPiece();
	}
	
	public void annuler() {
		etatCourant.annuler();
	}
	
	public void tournerPoignee() {
		etatCourant.tournerPoignee();
		etatCourant.vendreBonbon();
	}
	
	public int getBonbons() {
		return nbBonbons;
	}
	
	public void setBonbons(int nb) {
		nbBonbons = nb;
	}
	
	public void setEtat(Etat e) {
		etatCourant = e;
	}
	
	public Etat getEtatAttente() {
		return etatAttente;
	}
	
	public Etat getEtatAPiece() {
		return etatAPiece;
	}
	
	public Etat getEtatBonbonVendu() {
		return etatBonbonVendu;
	}
	
	public Etat getEtatVide() {
		return etatVide;
	}
}

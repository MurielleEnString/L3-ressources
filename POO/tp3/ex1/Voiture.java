public class Voiture {
	private final Etat etatArret;
	private final Etat etatAttente;
	private final Etat etatRoule;
	private Etat etatActuel;
	
	public Voiture() {
		etatArret = new EtatArret(this);
		etatAttente = new EtatAttente(this);
		etatRoule = new EtatRoule(this);	
		etatActuel = etatArret; //état par défaut	
	}
	
	//getters
	public Etat getEtatArret() {
		return etatArret;
	}
	
	public Etat getEtatAttente() {
		return etatAttente;
	} 
	
	public Etat getEtatRoule() {
		return etatRoule;
	}
	
	//setter
	public void setEtat(Etat e) {
		etatActuel = e;
	}
	
	//actions
	public void presserBouton() {
		etatActuel.presserBouton();
	}
	
	public void annuler() {
		etatActuel.annuler();
	}
	
	public void saisirAdresse() {
		etatActuel.saisirAdresse();
	}
	
	public void arriverDestination() {
		etatActuel.arriverDestination();
	}
	
}

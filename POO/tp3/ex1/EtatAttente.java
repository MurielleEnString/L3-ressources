public class EtatAttente extends Etat {
	
	public EtatAttente(Voiture v) {
		super(v);		
	}
	
	public void presserBouton() {
		voiture.setEtat(voiture.getEtatArret());	
	}
	
	public void saisirAdresse() {
		voiture.setEtat(voiture.getEtatRoule());	
	}
	
}

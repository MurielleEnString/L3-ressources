public class EtatArret extends Etat {
	
	public EtatArret(Voiture v) {
		super(v);		
	}
	
	public void presserBouton() {
		voiture.setEtat(voiture.getEtatAttente());	
	}
	
}

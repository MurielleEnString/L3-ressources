public class EtatRoule extends Etat {
	
	public EtatRoule(Voiture v) {
		super(v);		
	}
	
	public void arriverDestination() {
		voiture.setEtat(voiture.getEtatAttente());	
	}
	
}


public class EtatNonReserve extends Etat {
	
	public EtatNonReserve(Billet b) {
		super(b);
	}
	
	public void reserverBillet() {
		billet.setEtat(billet.getEtatReserve());
	}
	
}


public class EtatReserve extends Etat {
	
	public EtatReserve(Billet b) {
		super(b);
	}
	
	public void confirmerEtPayer() {
		billet.setEtat(billet.getEtatConfirmeEtPaye());
	}
	
	public void annuler() {
		billet.setEtat(billet.getEtatNonReserve());
	}
	
	public void modifierDate(String d) {
		billet.setDate(d);
	}
	
}

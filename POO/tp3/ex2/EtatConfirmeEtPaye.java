public class EtatConfirmeEtPaye extends Etat {
	
	public EtatConfirmeEtPaye(Billet b) {
		super(b);
	}
	
	public void departAvion() {
		billet.setEtat(billet.getEtatDepartAvion());
	}
	
	public void annuler() {
		billet.setEtat(billet.getEtatNonReserve());
	}
	
	public void modifierDate(String d) {
		billet.setDate(d);
	}
	
}

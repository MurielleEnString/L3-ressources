public class EtatAPiece extends Etat {
	
	public EtatAPiece(Distributeur d) {
		super(d);
	}
	
	public void annuler() {
		distrib.setEtat(distrib.getEtatAttente());
	}
	
	public void tournerPoignee() {
		distrib.setEtat(distrib.getEtatBonbonVendu());
	}
}

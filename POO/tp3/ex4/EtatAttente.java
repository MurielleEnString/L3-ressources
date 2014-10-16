public class EtatAttente extends Etat {
	
	public EtatAttente(Distributeur d) {
		super(d);
	}
	
	public void insererPiece() {
		distrib.setEtat(distrib.getEtatAPiece());
	}
}

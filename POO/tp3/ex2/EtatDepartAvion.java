public class EtatDepartAvion extends Etat {
	
	public EtatDepartAvion(Billet b) {
		super(b);
	}
	
	public void departAvion() {
		billet.setEtat(billet.getEtatDepartAvion());
	}
	
}



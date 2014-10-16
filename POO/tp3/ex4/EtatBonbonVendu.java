public class EtatBonbonVendu extends Etat {
	
	public EtatBonbonVendu(Distributeur d) {
		super(d);
	}
	
	public void vendreBonbon() {
		if(distrib.getBonbons() > 0) { //si le distributeur n'est pas vide
			distrib.setBonbons(distrib.getBonbons() - 1);
			distrib.setEtat(distrib.getEtatAttente());
		} else {
			distrib.setEtat(distrib.getEtatVide());
		}
	}

}


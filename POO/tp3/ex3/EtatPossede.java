public class EtatPossede extends Etat {
	
	public EtatPossede(Propriete p) {
		super(p);
	}
	
	public void liberer() {
		propriete.setProprio(null);
		propriete.setEtat(propriete.getEtatLibre());
	}
	
	public void collecterDroitsPassage(Joueur j) {
		System.out.println(" - appartient à " + propriete.getProprio().getNom());
		if(j != propriete.getProprio()) { //si le joueur n'est pas le propriétaire du terrain, on collecte les droits
			j.debit(propriete.getDroitsDePassage());
			propriete.getProprio().credit(propriete.getDroitsDePassage());
			System.out.println(propriete.getProprio().getNom() + " a maintenant " + propriete.getProprio().getArgent() + " euros.");
		}
	}

}

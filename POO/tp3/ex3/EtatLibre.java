public class EtatLibre extends Etat {
	
	public EtatLibre(Propriete p) {
		super(p);
	}
	
	public void acheter(Joueur j) {
		System.out.print(" - n'est pas encore vendu\n");
		if(j.getArgent() < propriete.getPrix()) { //si le joueur n'a pas assez d'argent
			System.out.println(j.getNom() + " ne peut pas acheter ce terrain");
		} else { //sinon, il achète automatiquement le terrain
			j.debit(propriete.getPrix());
			propriete.setProprio(j);
			propriete.setEtat(propriete.getEtatPossede());
			System.out.println(j.getNom() + " achète " + propriete.getNom());
		}
	}
}

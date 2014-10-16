public abstract class Etat {
	
	protected Distributeur distrib;
	
	public Etat(Distributeur d) {
		distrib = d;
	}
	
	public void insererPiece() {}
	
	public void annuler() {}
	
	public void tournerPoignee() {}
	
	public void vendreBonbon() {}
	
}
	

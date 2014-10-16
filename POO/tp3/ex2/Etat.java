public abstract class Etat {
	protected Billet billet;
	
	public Etat(Billet b) {
		billet = b;
	}
	
	public void confirmerEtPayer() {
		System.out.println("Il ne se passe rien");
	}
	
	public void annuler() {
		System.out.println("Il ne se passe rien");
	}
	
	public void departAvion() {
		System.out.println("Il ne se passe rien");
	}
	
	public void reserverBillet() {
		System.out.println("Il ne se passe rien");
	}
	
	public void modifierDate(String d) {
		System.out.println("Il ne se passe rien");
	}
}

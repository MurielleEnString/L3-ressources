public class Joueur {
	private String nom_;
	private int argent_;
	
	public Joueur(String n, int m) {
		nom_ = n;
		argent_ = m;
	}
	
	public String getNom() {
		return nom_;
	}
	
	public int getArgent() {
		return argent_;
	}
	
	public void debit(int m) {
		argent_ -= m;
	}
	
	public void credit(int m) {
		argent_ += m;
	}
}

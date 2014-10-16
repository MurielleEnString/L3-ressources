public class Intervalle {
	private int borneGauche;
	private int borneDroite;
	
	public Intervalle(int entierGauche, int entierDroit) {
		this.borneGauche = entierGauche;
		this.borneDroite = entierDroit;
	}
	
	public int getBorneGauche() {
		return this.borneGauche;
	}
	
	public int getBorneDroite() {
		return this.borneDroite;
	}
	
	public int getLargeur() {
		return this.borneDroite - this.borneGauche;
	}
	
}

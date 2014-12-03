public abstract class Billeterie {
	
	protected DernierNumero numero;
	
	public Billeterie() {
		numero = DernierNumero.getInstance();
	}
	
	public abstract Billet fabriquer();
	
}

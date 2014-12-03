public class DernierNumero {
	
	static private DernierNumero instance;
	private int numero;
	
	private DernierNumero() {
		numero = 1;
	}
	
	static public DernierNumero getInstance() {
		if(instance == null) {
			synchronized(DernierNumero.class) {
				if(instance == null) {
					instance = new DernierNumero();
				}
			}
		}
		return instance;		
	}
	
	public int getNumero() {
		int res = numero;
		numero++; //on incréménte pour préparer le numéro du prochain billet
		return res;
	}
	
}

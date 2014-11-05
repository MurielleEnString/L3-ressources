public abstract class Decorator extends Entier {
	
	protected Entier _en;
	protected final String[] tab = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
	
	public Decorator(Entier e) {
		_en = e;
	}
	
	public int getEntier() {
		return _en.getEntier();
	}
	
}

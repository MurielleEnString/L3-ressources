public class Octa extends Decorator {
	
	public Octa(Entier e) {
		super(e);
	}
	
	public void base() {
		int acc = _en.getEntier();
		String res = "";
		
		//conversion de la base 10 vers la base d'arrivée par division itérée
		while(acc > 0) {
			res = tab[acc%8] + res;
			acc = acc/8;
		}
		System.out.println(res);
	}
	
}

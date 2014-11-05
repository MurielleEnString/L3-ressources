public class Binaire extends Decorator {
	
	public Binaire(Entier e) {
		super(e);
	}
	
	public void base() {
		int acc = _en.getEntier();
		String res = "";
		
		//conversion de la base 10 vers la base d'arrivée par division itérée
		while(acc > 0) {
			res = tab[acc%2] + res;
			acc = acc/2;
		}
		System.out.println(res);
	}
	
}

public class BilleteriePapier extends Billeterie {
	
	public BilleteriePapier() {
		super();
	}
	
	public Billet fabriquer() {
		return new BilletPapier(numero.getNumero());
	}
}

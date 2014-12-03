public class BilleterieDigital extends Billeterie {
	
	public BilleterieDigital() {
		super();
	}
	
	public Billet fabriquer() {
		return new BilletDigital(numero.getNumero());
	}
}

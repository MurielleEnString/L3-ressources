public class Main {
	public static void main(String [] args) {
		Boisson deca = new Deca();
		deca.setTailleGrande();
		deca = new Noisette(deca);
		deca = new Sucre(deca);
		
		Boisson colom = new Colombia();
		colom.setTaillePetite();
		colom = new Chantilly(colom);
		colom = new Sucre(colom);
		
		System.out.println("--------------------------");
		System.out.println(deca.getDescription());
		
		System.out.println("Coût du café : " + deca.cout() + " €");
		
		System.out.println("--------------------------");
		System.out.println(colom.getDescription());
		
		System.out.println("Coût du café : " + colom.cout() + " €");
		
		System.out.println("--------------------------");
		System.out.println("Putaiiiiiin, trop de sucre >_<");
		
	}
}

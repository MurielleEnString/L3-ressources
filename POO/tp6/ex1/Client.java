public class Client {
	
	private AdapterDB olddb;
	private NewDB newdb;
	
	public Client(AdapterDB o, NewDB n) {
		olddb = o;
		newdb = n;
	}
	
	public Molecule trouver(String nom) {
		Molecule res = olddb.newMolecule(nom);
		if(res == null) { //si la molécule n'a pas été trouvée dans l'ancienne base
			res = newdb.newMolecule(nom);
		}
		return res;
	}
	
}

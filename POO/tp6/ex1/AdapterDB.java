public class AdapterDB implements InterNewDB {
	
	private OldDB db;
	
	public AdapterDB(OldDB database) {
		db = database;
	}
	
	public Molecule newMolecule(String nom) {
		return db.oldMolecule(nom);
	}
	
}

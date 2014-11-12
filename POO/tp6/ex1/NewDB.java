import java.util.*;

public class NewDB implements InterNewDB {
	private AbstractMap<String,Molecule> molecules;
	
	public NewDB() {
		molecules = new HashMap<String,Molecule>();
	}
	
	public void add(Molecule mol) {
		molecules.put(mol.getNom(), mol);
	}
	
	public Molecule newMolecule(String nom) {
		return molecules.get(nom);
	}

}

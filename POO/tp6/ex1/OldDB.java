import java.util.*;

public class OldDB implements InterOldDB {
	private AbstractMap<String,Molecule> molecules;
	
	public OldDB() {
		molecules = new HashMap<String,Molecule>();
	}
	
	public void add(Molecule mol) {
		molecules.put(mol.getNom(), mol);
	}
	
	public Molecule oldMolecule(String nom) {
		return molecules.get(nom);
	}

}

public class Main {
	public static void main(String [] args) {
		//variables
		OldDB odb = new OldDB();
		NewDB ndb = new NewDB();
		Molecule eau = new Molecule("eau","H2O");
		Molecule ethanol = new Molecule("ethanol","CH3CH2OH");
		AdapterDB adapter = new AdapterDB(odb);
		Client client = new Client(adapter,ndb);
		
		odb.add(eau);
		odb.add(ethanol);
		
		Molecule molA = client.trouver("eau");
		Molecule molB = client.trouver("ethanol");
		
		molA.afficher();
		molB.afficher();
		
	}
}

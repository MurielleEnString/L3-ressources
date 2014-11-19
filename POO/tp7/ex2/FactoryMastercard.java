public class FactoryMastercard implements Factory {
	
	public FactoryMastercard() {}
	
	public Lettre creerLettre(String destinataire) {
		return new LettreMastercard(destinataire);
	}
}

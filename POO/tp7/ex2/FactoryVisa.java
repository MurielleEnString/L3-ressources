public class FactoryVisa implements Factory {
	
	public FactoryVisa() {}
	
	public Lettre creerLettre(String destinataire) {
		return new LettreVisa(destinataire);
	}
}

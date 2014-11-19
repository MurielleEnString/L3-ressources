public class FactoryAmerican implements Factory {
	
	public FactoryAmerican() {}
	
	public Lettre creerLettre(String destinataire) {
		return new LettreAmerican(destinataire);
	}
}

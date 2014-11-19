public class Main {
	public static void main(String [] args) {
		Factory fVisa = new FactoryVisa();
		Factory fMaster = new FactoryMastercard();
		Factory fAmerican = new FactoryAmerican();
		
		Lettre visa = fVisa.creerLettre("Thomas Minier");
		Lettre mastercard = fMaster.creerLettre("Pierre 'Zoo' Gaultier");
		Lettre american = fAmerican.creerLettre("The Suprem");
		
		visa.afficher();
		mastercard.afficher();
		american.afficher();
		
	}
}

public class FactoryInfo implements Factory {
	
	public FactoryInfo() {}
	
	public Salle creerSalle(String nom) {
		return new SalleInfo(nom);
	}
	
	public Prof creerProf(String nom) {
		return new ProfInfo(nom);
	}
}


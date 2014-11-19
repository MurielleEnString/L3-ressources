public class FactoryMath implements Factory {
	
	public FactoryMath() {}
	
	public Salle creerSalle(String nom) {
		return new SalleMath(nom);
	}
	
	public Prof creerProf(String nom) {
		return new ProfMath(nom);
	}
}

public class Main {
	public static void main(String [] args) {
		Factory factoMath = new FactoryMath();
		Salle salle = factoMath.creerSalle("TD 07");
		Prof prof = factoMath.creerProf("JPP");
		
		System.out.println("Prof : " + prof.getNom() + " - Salle : " + salle.getNom());
	}
}

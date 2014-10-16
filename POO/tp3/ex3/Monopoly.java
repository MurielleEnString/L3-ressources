public class Monopoly {
	public static void main(String[] args) {
		Joueur j1 = new Joueur("Tom",50);
		Joueur j2 = new Joueur("Leo",500);
		Propriete prop = new Propriete("Cours des 50 otages");
		
		prop.visitePar(j1);
		prop.visitePar(j2);
		prop.visitePar(j1);
		prop.visitePar(j2);
		prop.visitePar(j1);
	}
}

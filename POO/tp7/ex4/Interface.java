import java.util.*;

public class Interface {
	
	private ArrayList<Bouton> boutons;
	private ArrayList<Menu> menus;
	private CreerComposants factory;
	
	public Interface(CreerComposants f) {
		factory = f;
	}
	
	public void addBouton(String couleur, int largeur) {
		boutons.add(factory.creerBouton(couleur, largeur));
	}
	
	public void addMenu(int largeur) {
		menus.add(factory.creerMenu(largeur));
	}
	
}

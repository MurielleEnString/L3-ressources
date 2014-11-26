public class CreerComposantsLinux implements CreerComposants {
	
	public CreerComposantsLinux() {}
	
	public Menu creerMenu(int largeur) {
		return new MenuLinux(largeur);
	}
	
	public Bouton creerBouton(String couleur, int largeur) {
		return new BoutonLinux(couleur, largeur);
	}
	
}

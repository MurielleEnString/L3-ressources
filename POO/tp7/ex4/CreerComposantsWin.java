public class CreerComposantsWin implements CreerComposants {
	
	public CreerComposantsWin() {}
	
	public Menu creerMenu(int largeur) {
		return new MenuWin(largeur);
	}
	
	public Bouton creerBouton(String couleur, int largeur) {
		return new BoutonWin(couleur, largeur);
	}
	
}

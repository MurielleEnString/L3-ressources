public class FacadeRetro {
	
	private Salle salle;
	private Multiprises multi;
	private Retroprojecteur retro;
	
	public FacadeRetro(Salle s, Multiprises m, Retroprojecteur r) {
		salle = s;
		multi = m;
		retro = r;
	}
	
	public void debutCours() {
		salle.allumerLumiere();
		multi.brancheMulti();
		retro.brancherRetro(multi);
		retro.allumer();
		
	}
	
	public void finCours() {
		retro.eteindre();
		retro.debrancherRetro(multi);
		multi.debrancherMulti();
		salle.eteindreLumiere();
	}
	
}

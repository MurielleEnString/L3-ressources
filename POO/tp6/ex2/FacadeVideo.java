public class FacadeVideo {
	
	private Salle salle;
	private Multiprises multi;
	private Videoprojecteur video;
	
	public FacadeVideo(Salle s, Multiprises m, Videoprojecteur v) {
		salle = s;
		multi = m;
		video = v;
	}
	
	public void debutCours() {
		salle.allumerLumiere();
		multi.brancheMulti();
		video.brancherVideo(multi);
		video.allumer();
		
	}
	
	public void finCours() {
		video.eteindre();
		video.debrancherVideo(multi);
		multi.debrancherMulti();
		salle.eteindreLumiere();
	}
	
}


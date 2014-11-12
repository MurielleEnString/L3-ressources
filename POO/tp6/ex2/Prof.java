public class Prof {

	private FacadeRetro coursAuRetro;
	private FacadeVideo coursAuVideo;
	
	public Prof(Salle s, Multiprises m, Retroprojecteur r) {
		coursAuRetro = new FacadeRetro(s,m,r);
		coursAuVideo = null;
	}
	
	public Prof(Salle s, Multiprises m, Videoprojecteur v) {
		coursAuVideo = new FacadeVideo(s,m,v);
		coursAuRetro = null;
	}
	
	public void debutCoursRetro() {
		coursAuRetro.debutCours();
	}
	
	public void finCoursRetro() {
		coursAuRetro.finCours();
	}
	
	public void debutCoursVideo() {
		coursAuVideo.debutCours();
	}
	
	public void finCoursVideo() {
		coursAuVideo.finCours();
	}
	
	
	//Méthode principale
	public static void main(String [] args) {
		Salle s = new Salle();
		Multiprises m = new Multiprises();
		Retroprojecteur r = new Retroprojecteur();
		Videoprojecteur v = new Videoprojecteur();
		Prof profA = new Prof(s,m,r);
		Prof profB = new Prof(s,m,v);
		
		System.out.println("---------------------------");
		System.out.println("Début du cours au retro");
		profA.debutCoursRetro();
		System.out.println("Le cours est fini");
		profA.finCoursRetro();
		
		System.out.println("---------------------------");
		System.out.println("Début du cours au vidéo");
		profB.debutCoursVideo();
		System.out.println("Le cours est fini");
		profB.finCoursVideo();
		
	}
	
}

public class Cryptage {
	private MethodeCryptage methode;
	private String donnees;
	
	public Cryptage(MethodeCryptage m, String data) {
		methode = m;
		donnees = data;
	}
	
	public void crypter() {
		donnees = methode.crypter(donnees);
	}
	
	public String getDonnees() {
		return donnees;
	}
	
	public void setMethodeCryptage(MethodeCryptage m) {
		methode = m;
	}
	
}

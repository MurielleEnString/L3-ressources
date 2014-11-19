public class FactoryApache implements Factory {
	
	public Connexion creerConnexion(boolean isSecur) {
		if(isSecur) {
			return new ConnexionApacheSec();
		} else {
			return new ConnexionApache();
		}
	}
}

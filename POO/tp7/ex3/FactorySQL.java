public class FactorySQL implements Factory {
	
	public Connexion creerConnexion(boolean isSecur) {
		if(isSecur) {
			return new ConnexionSQLSec();
		} else {
			return new ConnexionSQL();
		}
	}
}

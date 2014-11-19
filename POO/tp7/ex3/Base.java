public class Base {
	public static void main(String [] args) {
		Factory fSQL = new FactorySQL();
		Factory fApache = new FactoryApache();
		
		Connexion apacheS = fApache.creerConnexion(true);
		Connexion apacheN = fApache.creerConnexion(false);
		Connexion sqlS = fSQL.creerConnexion(true);
		Connexion sqlN = fSQL.creerConnexion(false);
		
		System.out.println("-------------------------");
		System.out.println(apacheS.getNom());
		
		System.out.println("-------------------------");
		System.out.println(apacheN.getNom());
		
		System.out.println("-------------------------");
		System.out.println(sqlS.getNom());
		
		System.out.println("-------------------------");
		System.out.println(sqlN.getNom());
	}
}

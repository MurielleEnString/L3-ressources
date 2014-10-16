public class Main {
	
	public static void main (String [] args) {
		try {
			MethodeCryptage md5 = new AlgoMD5();
			MethodeCryptage sha1 = new AlgoSHA1();
			Cryptage c = new Cryptage(sha1, "banana");
			c.crypter();
			
			System.out.println(c.getDonnees());
		} catch(Exception e) {
			System.out.println("Erreur : exception détectée");
		}
	}
	
}

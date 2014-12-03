public class Singleton {
	private static Singleton instance;
	private double numero;
	
	private Singleton(){
		numero = Math.random();
	}
	
	public static Singleton getInstance() {	
		if(instance == null) {
			synchronized(Singleton.class) {
				if(instance == null) {
					instance = new Singleton();
				}
			}
		}
		return instance;		
	}
	
	public void tester() {
		System.out.println("Je suis un Singleton et mon numéro est " + numero);
	}
}

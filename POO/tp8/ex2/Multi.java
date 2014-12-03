class Multi implements Runnable {
	
	private Billeterie billeterie;
	private String type;
	
	public Multi(Billeterie b, String t) {
		billeterie = b;
		type = t;
	}
	
	public void run() {
		Billet billet = billeterie.fabriquer();
		System.out.println("Un billet fabriqué par la billeterie " + type + " porte le numéro " + billet.getNumero());
			
	}
}

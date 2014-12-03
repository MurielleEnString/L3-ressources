class Main {
	public static void main(String args[]) {
		
		Billeterie b1 = new BilleterieDigital();
		Billeterie b2 = new BilleteriePapier();
		
		Thread t1 = new Thread(new Multi(b1, "digital"));
		Thread t2 = new Thread(new Multi(b2, "papier"));
		Thread t3 = new Thread(new Multi(b2, "papier"));
		
		t1.start();
		t2.start();
		t3.start();
		
	}	
}

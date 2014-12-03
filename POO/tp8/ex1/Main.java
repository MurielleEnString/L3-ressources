class Main {
	public static void main(String args[]) {
		
		Thread t1 = new Thread(new Multi());
		Thread t2 = new Thread(new Multi());
		
		t1.start();
		t2.start();
		
	}	
}

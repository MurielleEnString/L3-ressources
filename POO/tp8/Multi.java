class Multi implements Runnable {
	
	public void run() {
		Singleton s = Singleton.getInstance();
		s.tester();		
	}
}

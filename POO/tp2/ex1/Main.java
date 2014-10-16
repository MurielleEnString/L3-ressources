public class Main {
	
	public static void main (String [] args) {
		Format dateUK = new DateUK();
		Pays ecosse = new Pays(dateUK);
		
		System.out.println(ecosse.getDate());
	}
	
}

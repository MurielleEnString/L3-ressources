import java.io.*;

public class Main {
	public static void main(String [] args) {
		try {
			//on lit dans un sens
			System.out.println("A l'endroit !");
			InputStream inA = new FileInputStream("test.txt");
			int a = inA.read();
				
			while(a != -1) {
				System.out.println(a);
				a = inA.read();
			}
			inA.close();
			
			//et on lit dans l'autre
			System.out.println("Et à l'envers !");
			InputStream inB = new FileInputStream("test.txt");
			inB = new ReverseInputStream(inB);
			int b = inB.read();
				
			while(b != -1) {
				System.out.println(b);
				b = inB.read();
			}
			
		} catch(Exception e) {
			System.out.println("Erreur");
		}
	}
}

import java.util.SortedSet;
import java.util.TreeSet;

public class Main {
	public static void main(String [] args){
		SortedSet<Antenne> liste;
		liste = new TreeSet<Antenne>();
		liste.add(new Antenne(76,20,1000,3.5,5.0));
		System.out.println(liste.first().toString());
	}		
}

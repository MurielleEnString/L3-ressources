import java.util.Date;
public class Numerique {
    public static void main(String [] args) {
        Horloge h = new Horloge(new Date());
        Observer obs = new Affichage(h);

        h.setDate(new Date());
    }
}
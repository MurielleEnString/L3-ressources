import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class Affichage extends Observer {
    private final DateFormat formatDate;

    public Affichage(Horloge h) {
        super(h);
        formatDate = new SimpleDateFormat("HH:mm:ss");
    }

    public void update(Date d) {
        super.update(d);
        System.out.println("L'heure courante est : " + formatDate.format(date));
    }
}
import java.util.Date;
import java.util.Vector;

public class Horloge {
   private Date date;
   private Vector<Observer> observateurs;

   public Horloge(Date d) {
       date = d;
       observateurs = new Vector<Observer>();
   }

   public void addObserver(Observer obs) {
       observateurs.add(obs);
   }

   public void supprObserver(Observer obs) {
       observateurs.remove(obs);
   }

   public void notifierObs() {
       for(Observer obs: observateurs) {
           obs.update(date);
       }
   }

   public void setDate(Date d) {
       date = d;
       notifierObs();
   }

}
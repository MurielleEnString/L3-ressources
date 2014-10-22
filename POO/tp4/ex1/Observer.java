import java.util.Date;

public abstract class Observer {
    protected Horloge horloge;
    protected Date date;

    public Observer(Horloge h) {
        horloge = h;
        horloge.addObserver(this);
    }

    public void update(Date d) {
        date = d;
    }
}
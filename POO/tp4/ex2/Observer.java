public abstract class Observer {
    protected Station station;
    protected double temperature;

    public Observer(Station s) {
        station = s;
        station.addObserver(this);
    }

    public void update(double t) {
        temperature = t;
    }
}
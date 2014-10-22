import java.util.Vector;

public class Station {
    private double temperature;
    private Vector<Observer> observateurs;

    public Station(double t) {
        temperature = t;
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
            obs.update(temperature);
        }
    }

    public void setTemp(double t) {
        temperature = t;
        notifierObs();
    }

    public double getTemp() {
        return temperature;
    }
}
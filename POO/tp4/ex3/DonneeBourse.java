import java.util.Vector;

public class DonneeBourse {
    private double cac;
    private double nasdaq;
    private double nikkei;
    private Vector<Observer> observateurs;

    public DonneeBourse(double c, double nas, double nik) {
        cac = c;
        nasdaq = nas;
        nikkei = nik;
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
            obs.update(cac,nasdaq,nikkei);
        }
    }

    public void setDonnees(double c, double nas, double nik) {
        cac = c;
        nasdaq = nas;
        nikkei = nik;
        notifierObs();
    }

    public void setCac(double c) {
        cac = c;
        notifierObs();
    }

    public double getCac() {
        return cac;
    }

    public void setNasdaq(double nas) {
        nasdaq = nas;
        notifierObs();
    }

    public double getNasdaq() {
        return nasdaq;
    }

    public void setNikkei(double nik) {
        nikkei = nik;
        notifierObs();
    }

    public double getNikkei() {
        return nikkei;
    }

}
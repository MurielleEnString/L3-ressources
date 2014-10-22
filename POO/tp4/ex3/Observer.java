public abstract class Observer {
    protected DonneeBourse donneesBourse;
    protected double cac;
    protected double nasdaq;
    protected double nikkei;

    public Observer(DonneeBourse d) {
        donneesBourse = d;
        donneesBourse.addObserver(this);
    }

    public void update(double c, double nas, double nik) {
        cac = c;
        nasdaq = nas;
        nikkei = nik;
    }
}
public class Affichage extends Observer {

    public Affichage(DonneeBourse d) {
        super(d);
    }

    public void update(double c, double nas, double nik) {
        super.update(c,nas,nik);
        //affichage
        System.out.println("CAC 40 : " + cac);
        System.out.println("Nasdaq : " + nasdaq);
        System.out.println("Nikkei 225 : " + nikkei);
    }
}